cask "parallels-virtualization-sdk" do
  version "20.4.0-55980"
  sha256 "f3d94d5ee155f80d2a7e0c33b45b083a1760b1c8f92138ae61d60a7bfdd16d6d"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  livecheck do
    cask "parallels"
  end

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"

  # No zap stanza required
end
