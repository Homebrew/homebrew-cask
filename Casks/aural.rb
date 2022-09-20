cask "aural" do
  version "3.7.0"
  sha256 "ab9a55ac8ed89585af9e2826d6351596002431faf7985de9aa082f6fc2d4fec2"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
