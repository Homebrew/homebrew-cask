cask "beatmaker-kandy" do
  version "2.1.3,144"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-KANDY"
  name "Beatmaker KANDY"
  desc "VST/AU/AAX instrument plugin for sweet and edgy pop drums"
  homepage "https://www.ujam.com/beatmaker/kandy/"

  pkg "BM-KANDY_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmkandy.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-KANDY",
    "~/Library/Application Support/UJAM/BM-KANDY",
  ]
end
