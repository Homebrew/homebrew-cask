cask "aural" do
  version "3.12.1"
  sha256 "029b70d99d72941323aaf9ff8c43d55dffbd89b18484071d704937cdc8a1abcf"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
