cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "cac3f23579a78d14ebf02c5db6de1d0432a0ab0e7a016be582b7d4f6c0155bb8",
         intel: "50dbbfdc69fc2181f30a7feb9d263910644249d0093a0ebc478dc51dc6da3057"

  url "https://github.com/atuinsh/desktop/releases/download/v#{version}/Atuin_#{version}_#{arch}.dmg",
      verified: "github.com/atuinsh/desktop/"
  name "Atuin Desktop"
  desc "Runbook editor for terminal workflows"
  homepage "https://atuin.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Atuin.app"

  uninstall quit: "sh.atuin.app"

  zap trash: [
    "~/Library/Application Support/sh.atuin.app",
    "~/Library/Caches/sh.atuin.app",
    "~/Library/Preferences/sh.atuin.app.plist",
    "~/Library/WebKit/sh.atuin.app",
  ]
end
