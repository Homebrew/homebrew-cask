cask "aural" do
  version "2.3.0"
  sha256 "2386432add225a54d8eacb55fd6a3be39f3efc13a3ff8de1fae5baf401eaef9e"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  appcast "https://github.com/maculateConception/aural-player/releases.atom"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
