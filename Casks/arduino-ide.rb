cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.1.1"
  sha256 arm:   "786d18416e80105c42105a1c2126c1a985d4ed6d3b34965fa85396f8466764c4",
         intel: "8b50e791ea6b6b9dca2501d6fbcb98d0e30ace934c8b278cfca53b43f90f1bcc"

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
