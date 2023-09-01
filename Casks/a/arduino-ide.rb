cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.2.1"
  sha256 arm:   "ddab9126d8fda9dd29b241c37acfa32c13b8d3c4c02eb7b5cb2b25e6cdd65a5e",
         intel: "cc7ae3709f8fcc921b7e90bb70139dd56b340741edea743c4e5b9d8ce838d521"

  url "https://github.com/arduino/arduino-ide/releases/download/#{version}/arduino-ide_#{version}_macOS_#{arch}.dmg",
      verified: "github.com/arduino/arduino-ide/"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "arduino-ide-nightly"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
