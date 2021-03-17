cask "beatmaker-vice" do
  version "2.1.2,293"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-VICE"
  name "Beatmaker VICE"
  desc "VST/AU/AAX instrument plugin for synthwave and 80s pop drums"
  homepage "https://www.ujam.com/beatmaker/vice/"

  pkg "BM-VICE_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmvice.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-VICE",
    "~/Library/Application Support/UJAM/BM-VICE",
  ]
end
