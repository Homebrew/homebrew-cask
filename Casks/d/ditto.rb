cask "ditto" do
  version "1.11.9"
  sha256 "27fcad6aa285a21c23eca05938bcab5f0123b20228c2049382080c8fc8c0d6f5"

  url "https://download.airsquirrels.com/Ditto/App/Mac/Ditto-#{version}.dmg"
  name "Ditto"
  desc "Screen mirroring and digital signage"
  homepage "https://www.airsquirrels.com/ditto"

  livecheck do
    url "https://updates.goditto.com/DittoConnect/Mac/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

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
