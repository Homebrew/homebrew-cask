cask "canon-ufrii-driver" do
  version "10.19.23"
  sha256 "aa6cb2d87c2c16baf890dd14bedf9fa3a2f4cc6d990dd247c050bb153d13b5a5"

  url "https://downloads.canon.com/sss2025/drivers/UFRII_v#{version}_mac.zip",
      verified: "downloads.canon.com/"
  name "Canon UFR II/UFRII LT/LIPSLX/CARPS2 Printer Driver"
  desc "Printer driver for Canon imageRUNNER office printers"
  homepage "https://oip.manual.canon/USRMA-3844-zz-DR-enUV/"

  livecheck do
    url "https://www.usa.canon.com/bin/canon/support/getsoftwarediver.ds.MACOS_14.39319.All.English.json",
        user_agent: :browser
    regex(/UFRII[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["fileUrl"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  pkg "UFRII_LT_LIPS_LX_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSPrinter.*",
            rmdir:   "/Library/Printers/Canon"

  # No zap stanza required
end
