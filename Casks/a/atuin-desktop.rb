cask "atuin-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "7d7bf8c0af4fa6e6661ce9a6abe483b4a331e1a9b9c3909425a5393fa6b43377",
         intel: "edc995590cbe78b67444a4ce16bdc82a5f00f79db6235ec826fce9f908510880"

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
