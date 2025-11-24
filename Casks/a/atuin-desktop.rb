cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "8aa622d44c5a8388366379ac28e7592929209402a44650545891f4df7cfc2021",
         intel: "7a9b5cc47e477a4e8177eb8eaf55943fddb69e84f62c5fb06635772b137f4e9a"

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
