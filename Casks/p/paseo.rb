cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.108"
  sha256 arm:   "8550dd6b2dbad0338a77f0ad45138f1f391fd22863983f99791695c010cdb827",
         intel: "6db50842942064a9694a177eae6ae036129f2913cf888c1b080f060c14e83746"

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
