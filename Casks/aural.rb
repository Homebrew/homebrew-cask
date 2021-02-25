cask "aural" do
  version "2.6.0"
  sha256 "b806aa5f9a131bd880ea20b738ae2cd4a624e8b5de88d40e8bc44d7df9b60734"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  appcast "https://github.com/maculateConception/aural-player/releases.atom"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
