cask "switchresx" do
  version "4.11.3"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.madrau.com/data/switchresx/SwitchResX#{version.major}.zip"
  name "SwitchResX"
  desc "Controls screen display settings"
  homepage "https://www.madrau.com/"

  livecheck do
    url "https://www.madrau.com/srx_download/srx_download/history.php"
    regex(/SwitchResX\s*(\d+(?:\.\d+)*)/i)
  end

  prefpane "SwitchResX Installer.app/Contents/Resources/SwitchResX.prefPane"

  uninstall quit:   [
    "fr.madrau.switchresx.app",
    "fr.madrau.switchresx.daemon", # note, daemon does not :quit cleanly
  ],
            signal: [
              ["INT",  "fr.madrau.switchresx.daemon"],
              ["KILL", "fr.madrau.switchresx.daemon"],
            ],
            delete: [
              "/Library/ScriptingAdditions/SwitchResX Extensions.osax",
              "/Library/ScriptingAdditions/SwitchResX Menu.osax",
            ]

  zap trash: [
    "~/Library/Caches/fr.madrau.switchresx.app",
    "~/Library/Caches/fr.madrau.switchresx.daemon",
    "~/Library/Cookies/fr.madrau.switchresx.app.binarycookies",
    "~/Library/Cookies/fr.madrau.switchresx.daemon.binarycookies",
    "~/Library/Preferences/fr.madrau.switchresx.app.plist",
    "~/Library/Preferences/fr.madrau.switchresx.daemon.plist",
    "~/Library/Preferences/fr.madrau.switchres.desktop-layout.plist",
    "~/Library/Saved Application State/fr.madrau.switchresx.app.savedState",
  ]
end
