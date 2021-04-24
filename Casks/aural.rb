cask "aural" do
  version "2.12.1"
  sha256 "3045f96b5067f439032c28d2a4a3e23be60da52351106c88266a3baf2218a97e"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
