cask "beatmaker-eden" do
  version "2.1.2,393"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-EDEN2"
  name "Beatmaker EDEN"
  desc "VST/AU/AAX instrument plugin for dance and EDM drums"
  homepage "https://www.ujam.com/beatmaker/eden/"

  pkg "BM-EDEN2_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmeden.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-EDEN",
    "~/Library/Application Support/UJAM/BM-EDEN",
  ]
end
