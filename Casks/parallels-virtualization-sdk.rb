cask "parallels-virtualization-sdk" do
  version "16.0.1-48919"
  sha256 "8043116697cd90d81db08bfda8097c7b06ced7d2924589354b62fa2e7f359b41"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
