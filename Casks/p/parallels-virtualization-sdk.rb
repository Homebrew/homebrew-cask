cask "parallels-virtualization-sdk" do
  version "20.3.0-55895"
  sha256 "fc9d4965937453cb71695676e53261f156cc1e7b732388e47a97bf7c08155d1d"

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
