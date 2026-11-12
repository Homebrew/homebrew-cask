cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.3.11"
  sha256 arm:          "bd70d36e125943855c27308c97702d69a7017041741a6f123734300424390bf7",
         intel:        "30bfa077dd94cbcb6a87acd8064458530acb3fec70cbc53448645539e638c0b5",
         x86_64_linux: "f243f8f894ebec50cbdf0e4decc4f31dd16f22254250de6243eab80ed83d3a90"

  on_macos do
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
    depends_on arch: :x86_64

    app_image "arduino-ide_#{version}_Linux_#{arch}.AppImage", target: "ArduinoIDE.AppImage"

    zap trash: [
      "~/.arduino15",
      "~/.arduinoIDE",
      "~/.config/Arduino IDE",
      "~/.config/arduino-ide",
    ]
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
