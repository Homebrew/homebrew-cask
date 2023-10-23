cask "aural" do
  version "3.24.1"
  sha256 "693986ba2913007602b37aa37c22f189a88a5b8c3530519af87c0447f2beb419"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  depends_on macos: ">= :high_sierra"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
