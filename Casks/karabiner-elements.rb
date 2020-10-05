cask "karabiner-elements" do
  if MacOS.version <= :el_capitan
    version "11.6.0"
    sha256 "c1b06252ecc42cdd8051eb3d606050ee47b04532629293245ffdfa01bbc2430d"

    url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"

    pkg "Karabiner-Elements.sparkle_guided.pkg"
  elsif MacOS.version <= :mojave
    version "12.10.0"
    sha256 "53252f7d07e44f04972afea2a16ac595552c28715aa65ff4a481a1c18c8be2f4"

    url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg"

    pkg "Karabiner-Elements.sparkle_guided.pkg"
  else
    version "13.0.0"
    sha256 "18e3f255fd479046f36e57f2c2e0319568aad48784d6deb84c6ae40e9c92db2b"

    url "https://github.com/pqrs-org/Karabiner-Elements/releases/download/v#{version}/Karabiner-Elements-#{version}.dmg"

    pkg "Karabiner-Elements.pkg"
  end

  appcast "https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml"
  name "Karabiner Elements"
  desc "Keyboard customizer"
  homepage "https://pqrs.org/osx/karabiner/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  uninstall signal:  [
    ["TERM", "org.pqrs.Karabiner-Elements"],
    ["TERM", "karabiner_grabber"],
    ["TERM", "karabiner_console_user_server"],
  ],
            pkgutil: [
              "org.pqrs.Karabiner-Elements",
              "org.pqrs.Karabiner-DriverKit-VirtualHIDDevice",
            ],
            script:  {
              executable: "/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall_core.sh",
              sudo:       true,
            }

  # kext: 'org.pqrs.driver.Karabiner.VirtualHIDDevice.v*': Should not be uninstalled by Cask

  zap trash: [
    "~/Library/Application Support/Karabiner-Elements",
    "~/.karabiner.d",
    "~/.config/karabiner",
    "~/Library/Preferences/org.pqrs.Karabiner-Elements-Updater.plist",
    "~/Library/Caches/org.pqrs.Karabiner-Elements-Updater",
  ]
end
