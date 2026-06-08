cask "parallels-virtualization-sdk" do
  version "26.3.3-57507"
  sha256 "2d913ea7b6d7a3d0071570668000825c94e94dd5d692fa7f735d56b2b9427635"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  livecheck do
    cask "parallels"
  end

  depends_on macos: :ventura

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"

  # No zap stanza required
end
