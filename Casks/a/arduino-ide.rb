cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.3.3"
  sha256 arm:   "e77848fff0d5c5f9e9d75a734cc36aacff7c23c095ede296f4d9a2bee2411085",
         intel: "161f4d563cb6407202ab11f3f5e0f7e7699f99f2c9064979ad1576f436dd2d8c"

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
  depends_on macos: ">= :high_sierra"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cc.arduino.ide*.sfl*",
    "~/Library/Preferences/cc.arduino.IDE*.plist",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
