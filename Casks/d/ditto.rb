cask "ditto" do
  version "1.11.10"
  sha256 "9882c093c86f12743b6fd1e8cf980f2a74d1ee5e887cd77c8ed7ca6d2e0ef9fb"

  url "https://download.airsquirrels.com/Ditto/App/Mac/Ditto-#{version}.dmg"
  name "Ditto"
  desc "Screen mirroring and digital signage"
  homepage "https://www.airsquirrels.com/ditto"

  livecheck do
    url "https://updates.goditto.com/DittoConnect/Mac/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

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
