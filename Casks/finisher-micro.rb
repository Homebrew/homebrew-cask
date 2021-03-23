cask "finisher-micro" do
  version "1.0.1,128"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=FIN-MICRO"
  name "Finisher MICRO"
  desc "Free VST/AU/AAX multi-effect plugin"
  homepage "https://www.ujam.com/finisher/micro/"

  pkg "FIN-MICRO_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.finmicro.*"

  zap trash: [
    "/Library/Application Support/UJAM/FIN-MICRO",
    "~/Library/Application Support/UJAM/FIN-MICRO",
  ]
end
