cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.81"
  sha256 arm:          "eafbb9d1732f250696bc59228dfb55783ca9f6ec70605969881eb2f644bf5f43",
         intel:        "ffac8afc33f4e0d7b2f72e19805582345383f7a40003f1f54fce2370380c527a",
         arm64_linux:  "2a1e677f333d495c3b8107cd165e4d3a67f2062a48464f18d3d3ddfe419f6b2f",
         x86_64_linux: "509df9668433c943e23347d0020768b4dc58b4b3099550becd750e6f473df2ba"

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
