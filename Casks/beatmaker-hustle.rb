cask "beatmaker-hustle" do
  version "2.1.2,311"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-HUSTLE2"
  name "Beatmaker HUSTLE"
  desc "VST/AU/AAX instrument plugin for trap and grime drums"
  homepage "https://www.ujam.com/beatmaker/hustle/"

  pkg "BM-HUSTLE2_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmhustle.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-HUSTLE",
    "~/Library/Application Support/UJAM/BM-HUSTLE",
  ]
end
