cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.3.10"
  sha256 arm:   "8811860dc8782b6cd6bb0076e9215255849f404b1b9e6f38069fdc4f5c43648e",
         intel: "d64093a38dc0c9059bd70375ebb93461cd4583019cdbb157dd6dced32efc35b7"

  url "https://github.com/arduino/arduino-ide/releases/download/#{version}/arduino-ide_#{version}_macOS_#{arch}.dmg",
      verified: "github.com/arduino/arduino-ide/"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "arduino-ide@nightly"
  depends_on :macos

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduino15",
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cc.arduino.ide*.sfl*",
    "~/Library/Arduino15",
    "~/Library/Preferences/cc.arduino.IDE*.plist",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
