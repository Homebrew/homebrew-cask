cask "ditto" do
  version "1.11.7"
  sha256 "1c01024af0df8b9ca69832d36a4a5b03fae591b9bb5255822ced9ecdaf79a7f1"

  url "https://download.airsquirrels.com/Ditto/App/Mac/Ditto-#{version}.dmg"
  name "Ditto"
  desc "Screen mirroring and digital signage"
  homepage "https://www.airsquirrels.com/ditto"

  livecheck do
    url "https://updates.goditto.com/DittoConnect/Mac/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Ditto.app"

  uninstall quit: [
    "com.squirrels.Ditto",
    "com.squirrels.SquirrelsLoopbackAudioDriver",
  ]

  zap trash: [
    "~/Library/Application Support/Logs/Ditto.log*",
    "~/Library/Caches/com.squirrels.Ditto",
    "~/Library/HTTPStorages/com.squirrels.Ditto",
    "~/Library/Preferences/com.squirrels.Ditto.plist",
    "~/Library/Saved Application State/com.squirrels.Ditto.savedState",
  ]
end
