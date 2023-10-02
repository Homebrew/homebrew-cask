cask "aural" do
  version "3.23.0"
  sha256 "7da0c194b9c092a4434da87b263ecf8a9d1a65b0ca9871d2a614baf3ecaf8eff"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  depends_on macos: ">= :high_sierra"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
