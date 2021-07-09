cask "karabiner-elements" do
  if MacOS.version <= :el_capitan
    version "11.6.0"
    sha256 "c1b06252ecc42cdd8051eb3d606050ee47b04532629293245ffdfa01bbc2430d"

    url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"

    pkg "Karabiner-Elements.sparkle_guided.pkg"
  elsif MacOS.version <= :mojave
    version "12.10.0"
    sha256 "53252f7d07e44f04972afea2a16ac595552c28715aa65ff4a481a1c18c8be2f4"

    url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg",
        verified: "github.com/pqrs-org/Karabiner-Elements/"

    pkg "Karabiner-Elements.sparkle_guided.pkg"
  else
    version "13.5.0"
    sha256 "d775433d00cef41e3dab4981bbad5439689ee3dca319b1d57ab352ded9df5240"

    url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg",
        verified: "github.com/pqrs-org/Karabiner-Elements/"

    pkg "Karabiner-Elements.pkg"
  end

  name "Karabiner Elements"
  desc "Keyboard customizer"
  homepage "https://pqrs.org/osx/karabiner/"

  livecheck do
    url "https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  if MacOS.version <= :mojave
    uninstall signal:    [
      ["TERM", "org.pqrs.Karabiner-Menu"],
      ["TERM", "org.pqrs.Karabiner-NotificationWindow"],
    ],
              pkgutil:   "org.pqrs.Karabiner-Elements",
              launchctl: [
                "org.pqrs.karabiner.agent.karabiner_grabber",
                "org.pqrs.karabiner.agent.karabiner_observer",
                "org.pqrs.karabiner.karabiner_console_user_server",
                "org.pqrs.karabiner.karabiner_kextd",
                "org.pqrs.karabiner.karabiner_session_monitor",
              ],
              script:    {
                executable: "/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall_core.sh",
                sudo:       true,
              },
              delete:    "/Library/Application Support/org.pqrs/"
  else
    uninstall early_script: {
      executable: "/Library/Application Support/org.pqrs/Karabiner-DriverKit-VirtualHIDDevice/scripts/uninstall/remove_files.sh",
      sudo:       true,
    },
              signal:       [
                ["TERM", "org.pqrs.Karabiner-Menu"],
                ["TERM", "org.pqrs.Karabiner-NotificationWindow"],
              ],
              pkgutil:      [
                "org.pqrs.Karabiner-DriverKit-VirtualHIDDevice",
                "org.pqrs.Karabiner-Elements",
              ],
              launchctl:    [
                "org.pqrs.karabiner.agent.karabiner_grabber",
                "org.pqrs.karabiner.agent.karabiner_observer",
                "org.pqrs.karabiner.karabiner_console_user_server",
                "org.pqrs.karabiner.karabiner_session_monitor",
              ],
              script:       {
                executable: "/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall_core.sh",
                sudo:       true,
              },
              delete:       "/Library/Application Support/org.pqrs/"
    # The system extension 'org.pqrs.Karabiner-DriverKit-VirtualHIDDevice*' should not be uninstalled by Cask
  end

  zap trash: [
    "~/.config/karabiner",
    "~/.local/share/karabiner",
    "~/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager",
    "~/Library/Application Support/Karabiner-Elements",
    "~/Library/Caches/org.pqrs.Karabiner-Elements.Updater",
    "~/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager",
    "~/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist",
  ]
end
