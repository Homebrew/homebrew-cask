cask "aural" do
  version "2.9.0"
  sha256 "a7a2a618ce29cf536d7ed86495f73d3402a872619752ae0375abb2519281fc75"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
