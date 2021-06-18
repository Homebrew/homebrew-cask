cask "aural" do
  version "3.0.0"
  sha256 "7e8cdeb00b31ee7e1e03e7b74be36f3630bb56d30b60cac90ff37e86e9d9e85d"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
