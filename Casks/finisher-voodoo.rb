cask "finisher-voodoo" do
  version "206"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=FIN-VOOD"
  name "Finisher VOODOO"
  desc "VST/AU/AAX guitar effect plug-in"
  homepage "https://www.ujam.com/finisher/voodoo/"

  livecheck do
    url :url
    strategy :header_match
  end

  pkg "FIN-VOOD_osx_#{version}.pkg"

  uninstall pkgutil: "com.ujam.finvood.*"

  zap trash: [
    "/Library/Application Support/UJAM/FIN-VOOD",
    "~/Library/Application Support/UJAM/FIN-VOOD",
  ]
end
