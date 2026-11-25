cask "setshot" do
  version "1.0.1"
  sha256 "14f218e4b01df745c6ecb7edfa45716e10af7eb155aef950e913ab8739cf18ed"

  url "https://github.com/adamengst/setshot-app/releases/download/v#{version}/SetShot-#{version}.zip"
  name "SetShot"
  desc "Snapshot and diff system settings changes"
  homepage "https://tidbits.com/setshot/"

  livecheck do
    url "https://setshot.tidbits.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "SetShot.app"

  uninstall launchctl: "com.tidbits.SetShot.daily-snapshot"

  zap trash: [
    "~/Library/Application Support/SetShot",
    "~/Library/Caches/com.tidbits.SetShot",
    "~/Library/HTTPStorages/com.tidbits.SetShot",
    "~/Library/Preferences/com.tidbits.SetShot.plist",
    "~/Library/Saved Application State/com.tidbits.SetShot.savedState",
  ]
end
