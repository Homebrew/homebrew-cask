cask "finisher-neo" do
  version "350"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=FIN-NEO"
  name "Finisher NEO"
  desc "VST/AU/AAX multi-effect plugin"
  homepage "https://www.ujam.com/finisher/neo/"

  livecheck do
    url :url
    strategy :header_match
  end

  pkg "FIN-NEO_osx_#{version}.pkg"

  uninstall pkgutil: "com.ujam.finneo.*"

  zap trash: [
    "/Library/Application Support/UJAM/FIN-NEO",
    "~/Library/Application Support/UJAM/FIN-NEO",
  ]
end
