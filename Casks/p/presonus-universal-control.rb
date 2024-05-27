cask "presonus-universal-control" do
  version "4.3.1.100005"
  sha256 "c50fa033014e337b03ba32866e6ca828f2756b9b44835f8ef7ff3f6e3ae1582b"

  url "https://pae-web.presonusmusic.com/downloads/products/dmg/PreSonus_Universal_Control_#{version.dots_to_underscores}.dmg",
      verified: "pae-web.presonusmusic.com/downloads/products/dmg/"
  name "Universal Control"
  desc "PreSonus software control interface"
  homepage "https://www.presonus.com/products/Universal-Control"

  livecheck do
    url "https://legacy.presonus.com/products/Universal-Control/downloads"
    regex(/Universal\s?Control\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "PreSonus Universal Control.pkg"

  uninstall launchctl: [
              "asp.com.presonus.pae-quantum-audio-plug-in",
              "com.presonus.ucdaemon",
            ],
            pkgutil:   [
              "presonus.pkg.Universal.Control.controlpanel",
              "presonus.pkg.Universal.Control.daemon",
              "presonus.pkg.Universal.Control.presets",
              "presonus.pkg.Universal.Control.tb_driver",
            ]

  zap trash: [
    "/Library/Application Support/PreSonus/universalcontrol",
    "/Library/LaunchDaemons/com.presonus.ucdaemon.plist",
    "~/Library/Application Support/PreSonus/universalcontrol",
    "~/Library/Preferences/com.presonus.ucapp.plist",
  ]
end
