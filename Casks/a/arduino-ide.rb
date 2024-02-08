cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.3.0"
  sha256 arm:   "46c3dc8b9539a095a79475eeae1bd51e7ab9d3f0238389f5a93d62424ae23174",
         intel: "0564dc1ebf62e8256e7595084f2292ac81267225490fad7f5945533d7317fe36"

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
  depends_on macos: ">= :high_sierra"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
