cask "aural" do
  version "3.5.5"
  sha256 "6582ff4b739c0879cf43f474ac7674169e75e9a87e50e731897d532635cee318"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
