cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "94abdebc96d462df7c0771c732d86e18a85c2c7de432a2d3e05cfb1fe2e27b5d",
         intel: "1e921fc68e7565adf438e8b85e10bdd08e6f46ba6bbabfe6543a0bc7375e3b87"

  url "https://github.com/atuinsh/desktop/releases/download/v#{version}/Atuin_#{version}_#{arch}.dmg",
      verified: "github.com/atuinsh/desktop/"
  name "Atuin Desktop"
  desc "Runbook editor for terminal workflows"
  homepage "https://atuin.sh/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
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
