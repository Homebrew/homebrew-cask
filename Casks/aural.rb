cask "aural" do
  version "3.13.0"
  sha256 "9acc2be5af5776c877c86f3b0b0b18e5a8bd592acf11a46b944c46307c6a25a9"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
