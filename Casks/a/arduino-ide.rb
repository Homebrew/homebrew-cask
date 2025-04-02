cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.3.5"
  sha256 arm:   "fb55a8352f48928c18371a1300168b616b837c2a3abca02fdb458836fc3aef52",
         intel: "b0014ae925ca6d3f9062a2858affc1c182be12efc269040e5e46720c9fc5611b"

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
  depends_on macos: ">= :catalina"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cc.arduino.ide*.sfl*",
    "~/Library/Preferences/cc.arduino.IDE*.plist",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
