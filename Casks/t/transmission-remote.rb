cask "transmission-remote" do
  version "2026.08.10.1"
  sha256 "364a2312fe2b2f0ee30deed93e302a4608214e6775e9cfe2c432e163e7ce5676"

  url "https://github.com/nickv2002/Transmission-Remote-MacOS/releases/download/v#{version}/Transmission.Remote-#{version}.zip"
  name "Transmission Remote"
  desc "Native macOS client for remotely controlling a Transmission daemon"
  homepage "https://github.com/nickv2002/Transmission-Remote-MacOS"

  app "Transmission Remote.app"

  zap trash: [
    "~/Library/Preferences/com.nickvance.transmission-remote-mac.plist",
    "~/Library/Saved Application State/com.nickvance.transmission-remote-mac.savedState",
  ]
end
