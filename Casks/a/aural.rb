cask "aural" do
  version "4.0.0-preview28"
  sha256 "5cacd6f1f5b6956bdb9c5ff7f9b05ebbb11516010000d1f0bc793e6045a17172"

  url "https://github.com/maculateConception/aural-player/releases/download/final/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  deprecate! date: "2025-06-22", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
