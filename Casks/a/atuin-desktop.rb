cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "4ac8986b72206e993ba3e77566f0136e08f9d3c8c24cff534e1dffac7d57498d",
         intel: "914f8c131c1ac9b6204a6b0e0538f291e043e1df4ad11cab52830c750975cc7d"

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
