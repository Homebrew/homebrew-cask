cask "controllermate" do
  version "4.11.1"
  sha256 "dd95d0b2abd6c23148092c96593fb303befc374c6a912afad57efb48b0a1e04b"

  url "https://orderedbytes.s3.amazonaws.com/ControllerMate#{version.no_dots}.zip",
      verified: "orderedbytes.s3.amazonaws.com/"
  name "ControllerMate"
  desc "Create virtual mouse, tablet, and joystick devices"
  homepage "https://www.orderedbytes.com/controllermate/"

  disable! date: "2024-12-16", because: :discontinued

  pkg "#temp#/ControllerMate.sparkle_interactive.pkg"

  uninstall launchctl: [
              "com.orderedbytes.ControllerMate.KextHelper",
              "com.orderedbytes.ControllerMateHelper",
            ],
            signal:    [
              ["TERM", "com.orderedbytes.ControllerMate#{version.major}"],
              ["TERM", "com.orderedbytes.ControllerMateHelper"],
            ],
            kext:      [
              "com.orderedbytes.driver.CMUSBDevices",
              "com.orderedbytes.driver.ControllerMateFamily",
            ],
            delete:    [
              "/Applications/ControllerMate.app",
              "/Library/Extensions/ControllerMate.kext,/Library/Application Support/ControllerMate",
              "/Library/LaunchAgents/com.orderedbytes.ControllerMateHelper.plist",
              "/private/var/db/receipts/com.orderedbytes.controllermate.*",
            ]

  zap trash: [
    "~/Library/Application Support/ControllerMate",
    "~/Library/Caches/com.orderedbytes.ControllerMate*",
    "~/Library/Logs/ControllerMate MIDI",
    "~/Library/Logs/ControllerMate",
  ]

  caveats do
    reboot
  end
end
