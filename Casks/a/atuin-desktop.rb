cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.17"
  sha256 arm:   "c8b42c16c5a5778d49a4e001c0cd8034427b18ff937737d76abec4d6ad104fb2",
         intel: "af263d709c5e0db897ee25947ae2a13247d5dfe0f622309bf07a71db838a809d"

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
