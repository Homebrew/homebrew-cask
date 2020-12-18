cask "parallels-virtualization-sdk" do
  version "16.1.1-49141"
  sha256 "f6fd485e68a7d130cdd800c046ed7c0afe4faf582ad0b82d12daefe33620adc8"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
