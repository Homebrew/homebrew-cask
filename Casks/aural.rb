cask "aural" do
  version "3.8.0"
  sha256 "60826b634a3cb26b8b08da33a664b6a267844d1a59faa8de28482ba87a98dada"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
