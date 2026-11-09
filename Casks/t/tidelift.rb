cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.80"
  sha256 arm:          "543d76284a9753398a1e11ad57de4eab9757a5a0543e35cc228c15610c50ea72",
         intel:        "4711f7717d2be946800dc6477421ea7d7e3654fecbdb3484b5325cef244eb437",
         arm64_linux:  "cb6f4b21a6b458844e378a940580c0d8411f1a9bb1c5f37f7da03630b3aed9ad",
         x86_64_linux: "d645489744811bba1f9519d671a6713a350e58487c411bd111eaf11f48db0cfc"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight_steps do
    set_permissions "tidelift", "+x"
  end

  zap :not_required
end
