cask "parallels-virtualization-sdk" do
  version "18.1.0-53311"
  sha256 "f648a523e8917cf55f5b074b5e48158d3d17112df6242e1f265c7dc7176ef8c7"

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
