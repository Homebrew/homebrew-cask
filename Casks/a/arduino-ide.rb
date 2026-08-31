cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.3.10"

  on_macos do
    sha256 arm:   "8811860dc8782b6cd6bb0076e9215255849f404b1b9e6f38069fdc4f5c43648e",
           intel: "d64093a38dc0c9059bd70375ebb93461cd4583019cdbb157dd6dced32efc35b7"

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
  on_linux do
    sha256 "79c8590a1744c220d72cbed0ea91c6e2a7f4594292699b2fb3364ebd713cd566"

    depends_on arch: :x86_64

    app_image "arduino-ide_#{version}_Linux_#{arch}.AppImage", target: "ArduinoIDE.AppImage"
  end

  url "https://github.com/arduino/arduino-ide/releases/download/#{version}/arduino-ide_#{version}_#{os}_#{arch}.#{url_end}"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "arduino-ide@nightly"
end
