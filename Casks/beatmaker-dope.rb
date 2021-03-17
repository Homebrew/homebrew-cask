cask "beatmaker-dope" do
  version "2.1.2,428"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-DOPE2"
  name "Beatmaker DOPE"
  desc "VST/AU/AAX instrument plugin for hip-hop and boom bap drums"
  homepage "https://www.ujam.com/beatmaker/dope/"

  pkg "BM-DOPE2_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmdope.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-DOPE",
    "~/Library/Application Support/UJAM/BM-DOPE",
  ]
end
