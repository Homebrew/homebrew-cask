cask "ditto" do
  version "1.9.0,1693"
  sha256 "a70d048d2ceeaf5e36c1a3ac9dc6b2e30c4cefb49ebdc4acf530684b540d8cc4"

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
