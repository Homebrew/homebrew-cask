cask "aural" do
  version "3.22.0"
  sha256 "09c1af93ff9a90c5c3f6d75a088840c799e3416502b6549d6baa2c7245386ae7"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
