cask "aural" do
  version "3.5.1"
  sha256 "aff6a6933fd77ca227d3c1ec6f66305d38fe02af77630775e0bc206dbb2198f8"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
