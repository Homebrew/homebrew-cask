cask "aural" do
  version "2.11.0"
  sha256 "0891634781584e3c0409a65d7a3d7bac4b273a8809ba8e0159700962a45ae783"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
