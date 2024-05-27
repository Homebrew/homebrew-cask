cask "canon-ufrii-driver" do
  version "10.19.16"
  sha256 "58831c5834b8b799b2496848b6c9f4f39d51abd813ad19c7aab38fb046c14be5"

  url "https://downloads.canon.com/bicg2023/drivers/UFRII_v#{version}_mac.zip",
      verified: "downloads.canon.com/"
  name "Canon UFR II/UFRII LT/LIPSLX/CARPS2 Printer Driver"
  desc "Printer driver for Canon imageRUNNER office printers"
  homepage "https://oip.manual.canon/USRMA-3844-zz-DR-enUV/"

  livecheck do
    url "https://www.usa.canon.com/bin/canon/support/getsoftwarediver.ds.MACOS_14.39319.All.English.json"
    regex(/UFRII[._-]v?(\d+(?:\.\d+)+)[._-]Mac/i)
  end

  depends_on macos: ">= :catalina"

  pkg "UFRII_LT_LIPS_LX_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSPrinter.*",
            rmdir:   "/Library/Printers/Canon"

  # No zap stanza required
end
