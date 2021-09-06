cask "aural" do
  version "3.3.1"
  sha256 "ad6fd5b77b20d39417888ec6cb96749b3b7952affd143039f4fa746b7c35bf88"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
