cask "arduino" do
  version "2.0.0"
  sha256 "fdab408c9227d25664ffd7fdc120520f0ca3fba0d2604f3bb86354e2dd9b7590"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_64bit.dmg"
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
