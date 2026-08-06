cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.71"
  sha256 arm:          "92413ad78e1d29030f3395d566c7b820db11e67b25806c632e87c91848cb52da",
         intel:        "886034f3c5357440e2c91dc7c65994918b9f3a7ba94fa1b4072551be0e0eddec",
         arm64_linux:  "77b8a890486f0fec45fc306f8ec53f7e8850316969d7577438f5e3d822701bfd",
         x86_64_linux: "6504af5d9ffea4b05325662fa763dc72a3aa549d1b7edafeaa2eff6b6f5580ba"

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

  # No zap stanza required
end
