cask "finisher-micro" do
  version "128"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=FIN-MICRO"
  name "Finisher MICRO"
  desc "Free VST/AU/AAX multi-effect plugin"
  homepage "https://www.ujam.com/finisher/micro/"

  livecheck do
    url :url
    strategy :header_match
  end

  pkg "FIN-MICRO_osx_#{version}.pkg"

  uninstall pkgutil: "com.ujam.finmicro.*"

  zap trash: [
    "/Library/Application Support/UJAM/FIN-MICRO",
    "~/Library/Application Support/UJAM/FIN-MICRO",
  ]
end
