cask "canon-ufrii-driver" do
  version "10.19.25,2026"
  sha256 "103a190b3b689799ddf7921548e317f4ae9ac72d41a1c0e2df0182c26a659024"

  url "https://downloads.canon.com/sss#{version.csv.second}/drivers/UFRII_v#{version.csv.first}_mac.zip",
      verified: "downloads.canon.com/"
  name "Canon UFR II/UFRII LT/LIPSLX/CARPS2 Printer Driver"
  desc "Printer driver for Canon imageRUNNER office printers"
  homepage "https://oip.manual.canon/USRMA-3844-zz-DR-enUV/"

  livecheck do
    url "https://www.usa.canon.com/bin/canon/support/getsoftwarediver.ds.MACOS_14.39319.All.English.json",
        user_agent: :browser
    regex(%r{(\d+)/drivers/UFRII[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip}i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["fileUrl"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on :macos

  pkg "UFRII_LT_LIPS_LX_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSPrinter.*",
            rmdir:   "/Library/Printers/Canon"

  # No zap stanza required
end
