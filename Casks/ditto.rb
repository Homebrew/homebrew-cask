cask "ditto" do
  version "1.8.0"
  sha256 "7a3597108a1d57e7f756b85b4463a4fcb834c4764702e5d4d02c4eb55cecfaf1"

  url "https://download.airsquirrels.com/Ditto/App/Mac/Ditto-#{version}.dmg"
  appcast "https://updates.goditto.com/DittoConnect/Mac/"
  name "Ditto"
  desc "Screen mirroring and digital signage"
  homepage "https://www.airsquirrels.com/ditto"

  app "Ditto.app"

  uninstall quit: [
    "com.squirrels.Ditto",
    "com.squirrels.SquirrelsLoopbackAudioDriver",
  ]
end
