cask "aural" do
  version "3.1.0"
  sha256 "b09de2d9cc8c053e9124409fadd90fde346934bbfa891af132bf6aa382816405"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
