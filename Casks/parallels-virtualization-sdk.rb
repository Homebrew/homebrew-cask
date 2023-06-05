cask "parallels-virtualization-sdk" do
  version "18.3.0-53606"
  sha256 "6c6128f9d8c4c8ccb23e7598a5d0459cbb646dd5b3fcdb1eee721802f5a06e08"

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
