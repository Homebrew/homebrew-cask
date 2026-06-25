cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.101"
  sha256 arm:   "abb60882079f60907689e94b45403d3da959b09f09c31ce8db9b82ece63cfc57",
         intel: "57e94946087dd81d4b9075c324a859fe340a6c0e31880d361543abaa4de121f5"

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
