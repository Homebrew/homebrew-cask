cask "sdformatter" do
  version "5.0.2"
  sha256 "158d32d88376d46baef22de2c57ca78ca894a210e97612596562b59391cb5f7f"

  url "https://www.sdcard.org/downloads/formatter/eula_mac/SDCardFormatterv#{version.major}_Mac.zip"
  name "SD Formatter"
  desc "Tool to format memory cards complying with the SD File System spec"
  homepage "https://www.sdcard.org/downloads/formatter/"

  livecheck do
    url :homepage
    regex(/SD Memory Card Formatter (\d+(?:\.\d+)*)/i)
  end

  pkg "SDCardFormatterv#{version.major}_Mac/Install SD Card Formatter #{version}.mpkg"

  uninstall pkgutil: "com.tuxera.pkg.SD_Card_Formatter"

  zap trash: "~/Library/Caches/com.tuxera.SDCardFormatter"
end
