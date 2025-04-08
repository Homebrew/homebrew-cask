cask "canon-ufrii-driver" do
  version "10.19.21"
  sha256 "610d6d42f403268b53417b8bab8397ed04596713fef77c33b46d38f397a71ff7"

  url "https://downloads.canon.com/sss2025/drivers/UFRII_v#{version}_mac.zip",
      verified: "downloads.canon.com/"
  name "Canon UFR II/UFRII LT/LIPSLX/CARPS2 Printer Driver"
  desc "Printer driver for Canon imageRUNNER office printers"
  homepage "https://oip.manual.canon/USRMA-3844-zz-DR-enUV/"

  livecheck do
    url "https://www.usa.canon.com/bin/canon/support/getsoftwarediver.ds.MACOS_14.39319.All.English.json"
    regex(/UFRII[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["fileUrl"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  pkg "UFRII_LT_LIPS_LX_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSPrinter.*",
            rmdir:   "/Library/Printers/Canon"

  # No zap stanza required
end
