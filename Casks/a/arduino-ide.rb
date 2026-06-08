cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.3.9"
  sha256 arm:   "88dcbe0360a6d96e811413110fc4c72e66e14e0c2fd93994bc1c82fc90ef3917",
         intel: "735bcc9b9b79515e0dda7764ba274e149d4708015e0641dbf1f9ef3b3b8a96dd"

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
