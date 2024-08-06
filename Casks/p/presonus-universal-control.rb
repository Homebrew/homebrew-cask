cask "presonus-universal-control" do
  version "4.3.3.100963"
  sha256 "bdecab8fd2046bc41b8a06fd538e30f8309bb2187f04c59112f6d72d314cf5ad"

  url "https://pae-web.presonusmusic.com/downloads/products/dmg/PreSonus_Universal_Control_v#{version.dots_to_underscores}.dmg",
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
