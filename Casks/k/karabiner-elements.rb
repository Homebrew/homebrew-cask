cask "karabiner-elements" do
  on_monterey :or_older do
    on_big_sur :or_older do
      version "14.13.0"
      sha256 "826270a21b7f4df9b9a8c79c9aad4de8f48021f58eaacbee1d4f150c963c6cbc"

      livecheck do
        skip "Legacy version"
      end
    end
    on_monterey do
      version "14.13.0"
      sha256 "826270a21b7f4df9b9a8c79c9aad4de8f48021f58eaacbee1d4f150c963c6cbc"

      livecheck do
        skip "Legacy version"
      end
    end

    binary "/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli"
  end
  on_ventura :or_newer do
    version "17.0.0"
    sha256 "97730c7d4dc831cf2fb5b5ee534ed19f885b205bf8470bf6b201f932046a53aa"

    livecheck do
      url "https://appcast.pqrs.org/karabiner-elements-appcast.xml"
      strategy :sparkle
    end
    pkg "Karabiner-Elements.pkg"
    binary "/Applications/Karabiner-Elements.app/Contents/Helpers/karabiner_cli"

    uninstall early_script: {
                executable: "/Library/Application Support/org.pqrs/Karabiner-DriverKit-VirtualHIDDevice/scripts/uninstall/remove_files.sh",
                sudo:       true,
              },
              launchctl:    [
                "org.pqrs.karabiner.agent.karabiner_grabber",
                "org.pqrs.karabiner.agent.karabiner_observer",
                "org.pqrs.karabiner.karabiner_console_user_server",
                "org.pqrs.karabiner.karabiner_grabber",
                "org.pqrs.karabiner.karabiner_observer",
                "org.pqrs.karabiner.karabiner_session_monitor",
                "org.pqrs.karabiner.NotificationWindow",
                "org.pqrs.service.agent.Karabiner-Console-User-Server-v3",
                "org.pqrs.service.agent.Karabiner-Core-Service-v3",
              ],
              quit:         "org.pqrs.Karabiner-Elements.Settings",
              signal:       [
                ["TERM", "org.pqrs.Karabiner-Menu"],
                ["TERM", "org.pqrs.Karabiner-NotificationWindow"],
              ],
              script:       {
                executable: "/Applications/Karabiner-Elements.app/Contents/Resources/uninstall_core.sh",
                sudo:       true,
              },
              pkgutil:      [
                "org.pqrs.Karabiner-DriverKit-VirtualHIDDevice",
                "org.pqrs.Karabiner-Elements",
              ],
              delete:       "/Library/Application Support/org.pqrs"
    # The system extension 'org.pqrs.Karabiner-DriverKit-VirtualHIDDevice*' should not be uninstalled by Cask
  end

  url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg"
  name "Karabiner Elements"
  desc "Keyboard customiser"
  homepage "https://karabiner-elements.pqrs.org/"

  auto_updates true
  depends_on :macos

  zap trash: [
    "~/.config/karabiner",
    "~/.local/share/karabiner",
    "~/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager",
    "~/Library/Application Support/Karabiner-Elements",
    "~/Library/Caches/org.pqrs.Karabiner-Elements.Updater",
    "~/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager",
    "~/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings",
    "~/Library/Preferences/org.pqrs.Karabiner-Elements.Settings.plist",
    "~/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist",
  ]
end
