cask "parallels-virtualization-sdk" do
  version "16.1.3-49160"
  sha256 "bbf885c30c59919733dd197a8382ed5f6ed92945badbda23f1f7ac20926c9846"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
