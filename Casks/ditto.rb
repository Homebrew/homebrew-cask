cask "ditto" do
  version "1.10.1,1722"
  sha256 "83353c4c268f3fd4774c67d7a2ca1a53f338f281567f0f3108bfb699f668c9f2"

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
