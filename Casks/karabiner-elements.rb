cask "karabiner-elements" do
  version "14.6.0"
  sha256 "37e03ff5fc848fb47303f43453615f3388848d4ae935a6868430a73c7f8d9346"

  url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg",
      verified: "github.com/pqrs-org/Karabiner-Elements/"

  on_el_capitan :or_older do
    version "11.6.0"
    sha256 "c1b06252ecc42cdd8051eb3d606050ee47b04532629293245ffdfa01bbc2430d"

    url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"

    pkg "Karabiner-Elements.sparkle_guided.pkg"
  end

  on_mojave :or_older do
    version "12.10.0"
    sha256 "53252f7d07e44f04972afea2a16ac595552c28715aa65ff4a481a1c18c8be2f4"

    url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg",
        verified: "github.com/pqrs-org/Karabiner-Elements/"

    pkg "Karabiner-Elements.sparkle_guided.pkg"
  end

  on_catalina :or_older do
    version "13.7.0"
    sha256 "9ac5e53a71f3a00d7bdb2f5f5f001f70b6b8b7b2680e10a929e0e4c488c8734b"

    url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg",
        verified: "github.com/pqrs-org/Karabiner-Elements/"

    livecheck do
      skip "newer versions only available for Big Sur or higher"
    end

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

  pkg "Karabiner-Elements.pkg"

  on_mojave :or_older do
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
  end

  on_catalina :or_newer do
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
