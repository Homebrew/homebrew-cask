cask "oracle-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18"

  if Hardware::CPU.intel?
    sha256 "1a9dd96bb5f3ed0370dbb76d089fe8beb6696e9d44cfc57a14a4082f6d620a4d"
  else
    sha256 "66668bf19077318e0c33570174ef171c7a69172615480f1fa97d0d2a1a8fb718"
  end

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase/#{version.major}u-relnotes.html"
    regex(/<li>\s*JDK\s*v?(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
