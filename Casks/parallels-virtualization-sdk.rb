cask "parallels-virtualization-sdk" do
  version "16.1.2-49151"
  sha256 "d48011bfa1c8086c5aa4cfff186a15f569500af0b68bc1bd5405ea5eea110288"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
