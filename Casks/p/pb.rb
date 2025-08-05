cask "pb" do
  version "11.0.2"
  sha256 "fdf0f2e7b820e5efbc9b0c7e69dfdcb4ac3caa3012ed7086d59a62c190f7c3e2"

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-#{version}-mac.zip",
      verified: "github.com/sidneys/pb-for-desktop/"
  name "PB for Desktop"
  desc "Unofficial Pushbullet desktop app to get push notifications"
  homepage "https://sidneys.github.io/pb-for-desktop"

  auto_updates true

  app "PB for Desktop.app"

  uninstall launchctl: "PB for Desktop",
            quit:      [
              "de.sidneys.pb-for-desktop",
              "de.sidneys.pb-for-desktop.helper",
              "de.sidneys.pb-for-desktop.helper.GPU",
              "de.sidneys.pb-for-desktop.helper.Plugin",
              "de.sidneys.pb-for-desktop.helper.Renderer",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.sidneys.pb-for-desktop.sfl*",
    "~/Library/Application Support/de.sidneys.pb-for-desktop.ShipIt",
    "~/Library/Application Support/PB for Desktop",
    "~/Library/Application Support/ShipIt_stderr.log",
    "~/Library/Application Support/ShipIt_stdout.log",
    "~/Library/Caches/de.sidneys.pb-for-desktop",
    "~/Library/Caches/de.sidneys.pb-for-desktop.ShipIt",
    "~/Library/Logs/PB for Desktop",
    "~/Library/Preferences/ByHost/de.sidneys.pb-for-desktop.ShipIt.*.plist",
    "~/Library/Preferences/de.sidneys.pb-for-desktop.helper.plist",
    "~/Library/Preferences/de.sidneys.pb-for-desktop.plist",
    "~/Library/Saved Application State/de.sidneys.pb-for-desktop.savedState",
    "~/Library/WebKit/de.sidneys.pb-for-desktop",
  ]

  caveats do
    requires_rosetta
  end
end
