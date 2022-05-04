cask "aural" do
  version "3.5.4"
  sha256 "4dd523dcde8f57eafc41dbd7937ab9c5f2340c91395560568fb458d8ae39a20f"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
