cask "ditto" do
  version "1.9.1,1699"
  sha256 "ecd2c567f6bce6203fda6a0d362d9df3a913fc18e960585e9b07e1d5b47b0a76"

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
