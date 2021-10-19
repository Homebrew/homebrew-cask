cask "parallels-virtualization-sdk" do
  version "17.1.0-51516"
  sha256 "111779bf8374f88854ec426d8da1db971a84c0968987174f281cbee966086f00"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  livecheck do
    url "https://www.parallels.com/download/pvsdk/"
    regex(%r{/parallelsvirtualizationsdk-?(\d+(?:\.\d+)+-\d+)(?:-mac)?\.dmg}i)
    strategy :header_match
  end

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
