cask "ditto" do
  version "1.11.8"
  sha256 "c9f22f136df2354d259b54359289bb539226fec16176821e7c9106b4bd745d80"

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
