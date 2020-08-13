cask "controllermate" do
  if MacOS.version <= :el_capitan
    version "4.9.10"
    sha256 "4f24f5763e96b0b0e959197dba5cc064928b59b74d49210bf5a484f4f9766d38"
  elsif MacOS.version <= :sierra
    version "4.10.4"
    sha256 "fdeb37ca8df145d927b9daef6dfa22ef6d1535f9ad1459c4f4ffcb52fbc19c3b"
  else
    version "4.11.1"
    sha256 "dd95d0b2abd6c23148092c96593fb303befc374c6a912afad57efb48b0a1e04b"
  end

  # orderedbytes.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://orderedbytes.s3.amazonaws.com/ControllerMate#{version.no_dots}.zip"
  appcast "https://www.orderedbytes.com/sparkle/appcast_cm460.xml"
  name "ControllerMate"
  homepage "https://www.orderedbytes.com/controllermate/"

  pkg "#temp#/ControllerMate.sparkle_interactive.pkg"

  uninstall launchctl: [
    "com.orderedbytes.ControllerMateHelper",
    "com.orderedbytes.ControllerMate.KextHelper",
  ],
            kext:      [
              "com.orderedbytes.driver.CMUSBDevices",
              "com.orderedbytes.driver.ControllerMateFamily",
            ],
            signal:    [
              ["TERM", "com.orderedbytes.ControllerMate#{version.major}"],
              ["TERM", "com.orderedbytes.ControllerMateHelper"],
            ],
            delete:    [
              "/Library/Extensions/ControllerMate.kext,/Library/Application Support/ControllerMate/",
              "/Library/LaunchAgents/com.orderedbytes.ControllerMateHelper.plist",
              "/Applications/ControllerMate.app",
              "/private/var/db/receipts/com.orderedbytes.controllermate.*",
            ]

  zap trash: [
    "~/Library/Application Support/ControllerMate",
    "~/Library/Caches/com.orderedbytes.ControllerMate4",
    "~/Library/Logs/ControllerMate MIDI",
    "~/Library/Logs/ControllerMate",
  ]

  caveats do
    reboot
  end
end
