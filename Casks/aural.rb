cask "aural" do
  version "3.17.0"
  sha256 "54744c3ae63de89d6d715754155e2e74fa274917e6923bf3b5b257b5a5f8cfc9"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
