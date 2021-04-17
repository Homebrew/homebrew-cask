cask "aural" do
  version "2.10.0"
  sha256 "ab0b8fb51112c60c3b66ad5af7a6f45e610da3d8538c72f8b212cc971aae6382"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
