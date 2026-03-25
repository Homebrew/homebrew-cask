cask "parallels-virtualization-sdk" do
  version "26.3.0-57392"
  sha256 "5f281cd8911771e0167e3a801bf351c2bbf45faacab03ef21e17f9c4b0d1d5ba"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  livecheck do
    cask "parallels"
  end

  depends_on macos: ">= :ventura"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"

  # No zap stanza required
end
