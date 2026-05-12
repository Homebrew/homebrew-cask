cask "parallels-virtualization-sdk" do
  version "26.3.2-57398"
  sha256 "1b401f8916f56aa265cb6aeae8cabc5af3b1156b84a39e3a16fea0b647374b73"

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
