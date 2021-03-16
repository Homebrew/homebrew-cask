cask "finisher-fluxx" do
  version "1.0.0,136"
  sha256 :no_check

  url "https://www.ujam.com/api/delivery/product?os=osx&sku=FIN-FLUXX"
  name "Finisher FLUXX"
  desc "VST/AU/AAX effect plugin for deconstructing, transforming, and animating sounds"
  homepage "https://www.ujam.com/finisher/fluxx/"

  pkg "FIN-FLUXX_osx_#{version.after_comma}.pkg"

  uninstall pkgutil: "com.ujam.finfluxx.*"

  zap trash: [
    "/Library/Application Support/UJAM/FIN-FLUXX",
    "~/Library/Application Support/UJAM/FIN-FLUXX",
  ]
end
