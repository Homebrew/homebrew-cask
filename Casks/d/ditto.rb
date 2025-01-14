cask "ditto" do
  version "1.11.6"
  sha256 "8daf35257077173b982e6550160b014e3f8ec6a29bc5b16f0712e1f6351c648e"

  url "https://download.airsquirrels.com/Ditto/App/Mac/Ditto-#{version}.dmg"
  name "Ditto"
  desc "Screen mirroring and digital signage"
  homepage "https://www.airsquirrels.com/ditto"

  livecheck do
    url "https://updates.goditto.com/DittoConnect/Mac/"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

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
