cask "parallels-virtualization-sdk" do
  version "16.1.0-48950"
  sha256 "b41e44e5a04d9088a93d4ff78cd06015b91264335777808f8ebc4ed8952949cf"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
