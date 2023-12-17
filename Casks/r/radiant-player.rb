cask "radiant-player" do
  version "1.12.0"
  sha256 "1a05de910d7fc0defcf010c7e0bbbb1eb32afc35a6eaa9397a5df57c6a5fc663"

  url "https://github.com/radiant-player/radiant-player-mac/releases/download/v#{version}/radiant-player-v#{version}.zip",
      verified: "github.com/radiant-player/radiant-player-mac/"
  name "Radiant Player"
  desc "App wrapper for Google Play Music"
  homepage "https://radiant-player.github.io/radiant-player-mac/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Radiant Player.app"

  uninstall quit: "com.sajidanwar.Radiant-Player"

  zap trash: [
    "~/Library/Application Support/Radiant Player",
    "~/Library/Caches/com.sajidanwar.Radiant-Player",
    "~/Library/Cookies/com.sajidanwar.Radiant-Player.binarycookies",
    "~/Library/Preferences/com.sajidanwar.Radiant-Player.plist",
    "~/Library/Saved Application State/com.sajidanwar.Radiant-Player.savedState",
  ]
end
