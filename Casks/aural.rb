cask "aural" do
  version "3.15.0"
  sha256 "39cd340597c99dc059359b33c3dfc48d004f161640425e64bf6f66348b1f1abb"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
