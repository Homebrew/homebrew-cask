cask "arduino-ide@nightly" do
  version :latest
  sha256 :no_check

  url "https://downloads.arduino.cc/arduino-ide/nightly/arduino-ide_nightly-latest_macOS_64bit.dmg"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  conflicts_with cask: "arduino-ide"
  depends_on macos: ">= :catalina"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
  ]
end
