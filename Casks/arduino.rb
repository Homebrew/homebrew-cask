cask "arduino" do
  version "2.0.0"
  sha256 "1d5f4aa4c82c8cf8d858c413928be55963ccd1203552d8dc07f4ca123f814c01"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_2.0.0_macOS_64bit.dmg"
  name "Arduino"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  conflicts_with cask: "homebrew/cask-versions/arduino-nightly"

  app "Arduino.app"
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  zap trash: [
    "~/Library/Arduino15",
    "~/Library/Preferences/cc.arduino.Arduino.plist",
    "~/Library/Saved Application State/cc.arduino.Arduino.savedState",
  ]

  caveats do
    discontinued
  end
end
