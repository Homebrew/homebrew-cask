cask "beatmaker-hype" do
  version "2.1.2,187"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-HYPE"
  name "Beatmaker HYPE"
  desc "VST/AU/AAX instrument plugin for progressive house and EDM drums"
  homepage "https://www.ujam.com/beatmaker/hype/"

  pkg "BM-HYPE_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmhype.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-HYPE",
    "~/Library/Application Support/UJAM/BM-HYPE",
  ]
end
