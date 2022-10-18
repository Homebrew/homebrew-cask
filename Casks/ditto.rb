cask "ditto" do
  version "1.10.0,1713"
  sha256 "b7696e9d7702114330cf73f8adc9802054505f4bf999bdd9eda6f2c3ff2dd3ce"

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

  zap trash: [
    "~/Library/Caches/com.squirrels.Ditto",
    "~/Library/Preferences/com.squirrels.Ditto.plist",
  ]
end
