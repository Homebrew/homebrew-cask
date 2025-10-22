cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "ce03cac6465ab63e8c8bbd91bedd0163e50ee2c5ca519c000418693f81abf229",
         intel: "38466591944f9401b21a328d19e94947b4645b4e73927988e88f0895e9c56313"

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
