cask "aural" do
  version "2.3.0"
  sha256 "0ac47febc70d9e2609322f8b93259e012fd169ca60eeb1f8600b8808c0424030"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  appcast "https://github.com/maculateConception/aural-player/releases.atom"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
