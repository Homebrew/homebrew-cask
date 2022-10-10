cask "aural" do
  version "3.10.0"
  sha256 "811b40e72c8ed7c2c9232b03de11dab61f35b8b87bd3e49396d17e93b7911885"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
