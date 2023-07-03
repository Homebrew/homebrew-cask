cask "arduino-ide" do
  arch arm: "arm64", intel: "64bit"

  version "2.1.0"
  sha256 arm:   "507a0519591de9664b2b53d8744da424cfbcade5172cdf009d06756bb412fa59",
         intel: "dc5e9b58421f6244d068ed7b4e85f209d313fa74e5e3080ece2b6e56c6e72cb4"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_#{arch}.dmg"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url "https://www.arduino.cc/en/software/"
    regex(/href=.*?arduino[._-]ide[._-]?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "arduino-ide-nightly"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
