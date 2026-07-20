cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.110"
  sha256 arm:   "efbe2d9307ca6c53f9c2e15b8b9ab34c7b2b8d5fdd7f9df1c0d390944fabe792",
         intel: "f4ce6687e60bce431af9c4a70dc46c63c6215ed20c493e9172b76dbdbef1389c"

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
