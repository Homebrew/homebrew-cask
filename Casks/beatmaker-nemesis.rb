cask "beatmaker-nemesis" do
  version "2.1.2,82"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-NEMESIS"
  name "Beatmaker NEMESIS"
  desc "VST/AU/AAX instrument plugin for broken and futuristic drums"
  homepage "https://www.ujam.com/beatmaker/nemesis/"

  pkg "BM-NEMESIS_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmnemesis.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-NEMESIS",
    "~/Library/Application Support/UJAM/BM-NEMESIS",
  ]
end
