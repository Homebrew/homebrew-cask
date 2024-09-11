cask "parallels-virtualization-sdk" do
  version "20.0.0-55653"
  sha256 "1b2b3a2c239a888036ec126a22a7b7a1252144d7babcf9bee0531cc696a2c7b0"

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
