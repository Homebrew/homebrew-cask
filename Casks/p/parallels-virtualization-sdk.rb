cask "parallels-virtualization-sdk" do
  version "26.1.0-57287"
  sha256 "bfdbc9a654ee1475b55ce2d2d4c30d8ff6ea0b7b5b1aa0b90f714650996da22d"

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
