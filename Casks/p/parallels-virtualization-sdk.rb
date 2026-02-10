cask "parallels-virtualization-sdk" do
  version "26.2.2-57373"
  sha256 "bd3b56038eab8d7b09f8814f7c3145f2e89c5e2e3a567eaf5d335f63bcd80806"

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
