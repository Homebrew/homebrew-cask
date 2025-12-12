cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "965f83fa76e9384ee4474f7a059eba2f8d60395714eaf4328d38ae5294edb5a5",
         intel: "4242bf748199747940e1b787b0804f67aa76f2a1d15d577665994f5d12a56d95"

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
