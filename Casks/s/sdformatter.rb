cask "sdformatter" do
  version "5.0.3"
  sha256 :no_check

  url "https://www.sdcard.org/downloads/formatter/eula_mac/Install%20SD%20Card%20Formatter.mpkg"
  name "SD Formatter"
  desc "Tool to format memory cards complying with the SD File System spec"
  homepage "https://www.sdcard.org/downloads/formatter/"

  livecheck do
    url :homepage
    regex(/SD Memory Card Formatter (\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "Install SD Card Formatter.mpkg"

  uninstall quit:    "com.tuxera.SDCardFormatter",
            pkgutil: "com.tuxera.pkg.SD_Card_Formatter",
            delete:  "/Applications/SD Card Formatter.app"

  zap trash: [
    "~/Library/Caches/com.tuxera.SDCardFormatter",
    "~/Library/HTTPStorages/com.tuxera.SDCardFormatter",
  ]
end
