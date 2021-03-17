cask "beatmaker-void" do
  version "2.1.2,205"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=BM-VOID"
  name "Beatmaker VOID"
  desc "VST/AU/AAX instrument plugin for instant drum & bass rhythms"
  homepage "https://www.ujam.com/beatmaker/void/"

  pkg "BM-VOID_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.bmvoid.*"

  zap trash: [
    "/Library/Application Support/UJAM/BM-VOID",
    "~/Library/Application Support/UJAM/BM-VOID",
  ]
end
