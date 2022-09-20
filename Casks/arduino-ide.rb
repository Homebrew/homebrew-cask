cask "arduino-ide" do
  version "2.0.0"
  sha256 "fdab408c9227d25664ffd7fdc120520f0ca3fba0d2604f3bb86354e2dd9b7590"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_64bit.dmg"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url "https://www.arduino.cc/en/software/"
    regex(/href=.*?arduino[._-]ide[._-]?(\d+(?:\.\d+)+)[._-]macos[._-]64bit\.dmg/i)
  end

  conflicts_with cask: "arduino-ide-nightly"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
  ]
end
