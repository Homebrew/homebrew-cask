cask "aural" do
  version "3.4.1"
  sha256 "0433a7daa2fcb6aeeac363ca495d6af0763a7353217e1bf4a6711ac3d64bf494"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
