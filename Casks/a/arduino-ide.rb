cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.3.7"
  sha256 arm:   "040640f8684c30b9be3ea06d62f8ff202d1af84c3df6a4a47407e458f19a0356",
         intel: "cf6c3a7782882b80ac31b57dd981e87a88956e4e9c3828317ce49a077649d00f"

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
