cask "parallels-virtualization-sdk" do
  version "16.5.0-49183"
  sha256 "5d4bcf6d6f0e341c5f33380f8601170c9f41b05a0f720050622bfc979e017e79"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
