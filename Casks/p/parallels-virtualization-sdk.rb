cask "parallels-virtualization-sdk" do
  version "26.4.0-57513"
  sha256 "c79e3acd1747a129a6e8730a884de74ec8a6ccef871bdb48fc648ae66eacbbf7"

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
