cask "aural" do
  version "3.9.1"
  sha256 "b1356487581165a10a2ad74fba1a2d2a0ec4121db4ba8d2587a79514c38f2da1"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
