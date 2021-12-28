cask "aural" do
  version "3.5.0"
  sha256 "33b9694ccbc67a03d754a69c5a9ccfce39fb2ddd922baa031db1c8526787c98a"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
