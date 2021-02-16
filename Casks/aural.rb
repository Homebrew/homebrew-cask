cask "aural" do
  version "2.4.0"
  sha256 "961ba5d37af8c0efa38eea255904634738ef92178e3a8353872d7e8100f52691"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  appcast "https://github.com/maculateConception/aural-player/releases.atom"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
