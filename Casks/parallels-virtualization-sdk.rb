cask "parallels-virtualization-sdk" do
  version "18.0.2-53077"
  sha256 "05cce75c28e6a895e01cb683d85c60c9a1be02964224fdcbd0f7b245b808ad19"

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
