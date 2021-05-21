cask "parallels-virtualization-sdk" do
  if Hardware::CPU.intel?
    version "16.5.0-49183"
    sha256 "5d4bcf6d6f0e341c5f33380f8601170c9f41b05a0f720050622bfc979e017e79"

    livecheck do
      url "https://www.parallels.com/download/pvsdk/intel/"
      regex(%r{/parallelsvirtualizationsdk-?(\d+(?:\.\d+)+-\d+)(?:-mac)?\.dmg}i)
      strategy :header_match
    end
  else
    version "16.5.0-50692"
    sha256 "3a796228f1ea27f6261a56af89342e1e3292194628e0dd4042d296eb83f0f18e"

    livecheck do
      url "https://www.parallels.com/download/pvsdk/m1/"
      regex(%r{/parallelsvirtualizationsdk-?(\d+(?:\.\d+)+-\d+)(?:-mac)?\.dmg}i)
      strategy :header_match
    end
  end

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsVirtualizationSDK-#{version}-mac.dmg"
  name "Parallels Virtualization SDK"
  desc "Desktop virtualization development kit"
  homepage "https://www.parallels.com/products/desktop/download/"

  pkg "Parallels Virtualization SDK.pkg"

  uninstall pkgutil: "com.parallels.pkg.sdk"
end
