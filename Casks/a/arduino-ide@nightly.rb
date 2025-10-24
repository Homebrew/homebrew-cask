cask "arduino-ide@nightly" do
  arch arm: "arm64", intel: "64bit"

  version :latest
  sha256 :no_check

  url "https://downloads.arduino.cc/arduino-ide/nightly/arduino-ide_nightly-latest_macOS_#{arch}.dmg"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  conflicts_with cask: "arduino-ide"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduino15",
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cc.arduino.ide*.sfl*",
    "~/Library/Arduino15",
    "~/Library/Preferences/cc.arduino.IDE*.plist",
    "~/Library/Saved Application State/cc.arduino.IDE*.savedState",
  ]
end
