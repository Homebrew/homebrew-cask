cask "parallels-virtualization-sdk" do
  version "19.1.1-54734"
  sha256 "f0be175beda40d490f6c4d4a8dbc019c1a3fa1d46b201cd7f3ca87a39d39cb7f"

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
