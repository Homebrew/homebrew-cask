cask "parallels-virtualization-sdk" do
  version "17.1.2-51548"
  sha256 "0a86c8ab164735a50b93da2e34f556ffce60f953fc32130bf9bcc32d015281eb"

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
