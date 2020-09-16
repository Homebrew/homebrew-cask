cask "sdformatter" do
  version "5.0.1"
  sha256 "0150d9e53a0811b51275196d4e80eed9c86c2ccd00abe1200769ccd31df6ad2a"

  url "https://www.sdcard.org/downloads/formatter/eula_mac/SDCardFormatterv#{version.major}_Mac.zip"
  name "SD Formatter"
  desc "Tool to format memory cards complying with the SD File System spec"
  homepage "https://www.sdcard.org/"

  pkg "SDCardFormatterv#{version.major}_Mac/Install SD Card Formatter #{version}.mpkg"

  uninstall pkgutil: "com.tuxera.pkg.SD_Card_Formatter"

  zap trash: "~/Library/Caches/com.tuxera.SDCardFormatter"
end
