cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.96"
  sha256 arm:   "8c1f302ded372b5fbb3e240da788878f57f41aa6e4428ea646fa66d2fe2733f5",
         intel: "a3043a51e560dd1292f9df49d716b174357332949a78a0d554a57177ac7e59b0"

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
