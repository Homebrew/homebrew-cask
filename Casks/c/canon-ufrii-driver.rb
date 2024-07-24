cask "canon-ufrii-driver" do
  version "10.19.17"
  sha256 "2a88985f07ad8de870b750c13826c480c0ded9e982c1678eff43152cc279fab7"

  url "https://downloads.canon.com/bicg2024/drivers/UFRII_v#{version}_mac.zip",
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
