cask "aural" do
  version "3.19.0"
  sha256 "855b6cc42fabc75f947a4b1f61975876bbc768955660accf88be5f72ea9cc23e"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
