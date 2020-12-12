cask "switchresx" do
  version "4.10.1"
  sha256 "33b2bec0623f1edd83e32efa2ac1980f9d677211abdfd8a3d62289eb29abf20a"

  url "https://www.madrau.com/data/switchresx/SwitchResX#{version.major}.zip"
  appcast "https://www.madrau.com/SRXCurrentVersion#{version.major}"
  name "SwitchResX"
  desc "Controls screen display settings"
  homepage "https://www.madrau.com/"

  prefpane "SwitchResX.app/Contents/Resources/SwitchResX.prefPane"

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
