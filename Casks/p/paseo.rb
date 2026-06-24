cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.100"
  sha256 arm:   "eb70e98dcc9e5dadd9e6e621a8adea0ff9f6fd49f8d6c6c6ae1424ddf59bc1a0",
         intel: "7d959c62609092463138689166d973fd42542a265f0ddf41e22a3610367af3b1"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-#{version}-#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Paseo.app"
  binary "#{appdir}/Paseo.app/Contents/Resources/bin/paseo"

  uninstall launchctl: "sh.paseo.desktop.ShipIt",
            quit:      "sh.paseo.desktop",
            script:    {
              executable: "#{appdir}/Paseo.app/Contents/Resources/bin/paseo",
              args:       ["daemon", "stop", "--force"],
            }

  zap trash: [
    "~/.paseo",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.paseo.desktop.sfl*",
    "~/Library/Application Support/Paseo",
    "~/Library/Caches/@getpaseodesktop-updater",
    "~/Library/Caches/sh.paseo.desktop",
    "~/Library/Caches/sh.paseo.desktop.ShipIt",
    "~/Library/HTTPStorages/sh.paseo.desktop",
    "~/Library/Logs/Paseo",
    "~/Library/Preferences/ByHost/sh.paseo.desktop.ShipIt.*.plist",
    "~/Library/Preferences/sh.paseo.desktop.plist",
  ]
end
