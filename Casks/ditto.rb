cask "ditto" do
  version "1.8.0,1641"
  sha256 "7a3597108a1d57e7f756b85b4463a4fcb834c4764702e5d4d02c4eb55cecfaf1"

  url "https://download.airsquirrels.com/Ditto/App/Mac/Ditto-#{version.csv.first}.dmg"
  name "Ditto"
  desc "Screen mirroring and digital signage"
  homepage "https://www.airsquirrels.com/ditto"

  livecheck do
    url "https://updates.goditto.com/DittoConnect/Mac/"
    strategy :sparkle
  end

  app "Ditto.app"

  uninstall quit: [
    "com.squirrels.Ditto",
    "com.squirrels.SquirrelsLoopbackAudioDriver",
  ]
end
