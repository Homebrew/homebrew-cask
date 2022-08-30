cask "parallels-virtualization-sdk" do
  version "18.0.1-53056"
  sha256 "dc03db8233c201be839782dae54b007d238bdbf54a7cd6dafb1be4b4d5ca00d8"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  livecheck do
    url "https://www.parallels.com/download/pvsdk/"
    strategy :header_match
    regex(%r{/parallelsvirtualizationsdk-?(\d+(?:\.\d+)+-\d+)(?:-mac)?\.dmg}i)
  end

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
