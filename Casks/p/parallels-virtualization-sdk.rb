cask "parallels-virtualization-sdk" do
  version "20.2.0-55872"
  sha256 "1fbdc19428b01493ff8b44b2531129ab9954557a99008cc431175f32bb45e404"

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
