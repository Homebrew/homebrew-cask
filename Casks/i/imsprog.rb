cask "imsprog" do
  version "1.9.1"
  sha256 "a1b235d0abea81859a05c1b6f27fccfb8428d17ecd61cb6f7ea36f1cd5eac796"

  url "https://github.com/bigbigmdm/IMSProg/releases/download/v#{version}/macos-arm64-dmg.zip"
  name "IMSProg"
  desc "GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"

  app "IMSProg.app"
  app "IMSProg_editor.app"
  app "IMSProg_database_update.app"

  zap trash: [
    "~/.config/imsprog",
    "~/Library/Preferences/com.imsprog.plist",
  ]
end
