cask "aural" do
  version "2.5.0"
  sha256 "e4b3224a39cfce1af965db80ca14472fbc7e760377755c0ac4ac2eceaf3e147d"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  appcast "https://github.com/maculateConception/aural-player/releases.atom"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
