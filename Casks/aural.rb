cask "aural" do
  version "3.18.0"
  sha256 "630f2355ca15b3a7663a6893b78b4ebdaa39bb4390f627f9c9fcb44d290e2b3f"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
