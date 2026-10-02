cask "imsprog" do
  version "1.9.1"
  sha256 "acca1d6ce5a19abe4cfb9c32654e5fb5e1b9457d075d012d9bc540f583932fd3"

  url "https://github.com/bigbigmdm/IMSProg/releases/download/v#{version}/macos-arm64-dmg.zip"
  name "IMSProg"
  desc "GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"

  container nested: "imsprog-macos-arm64.dmg"

  depends_on macos: ">= :catalina"

  app "IMSProg.app"
  app "IMSProg_editor.app"
  app "IMSProg_database_update.app"

  zap trash: [
    "~/.config/imsprog",
    "~/Library/Preferences/com.imsprog.plist",
  ]
end

