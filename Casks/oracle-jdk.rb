cask "oracle-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.1"

  if Hardware::CPU.intel?
    sha256 "1cddd0c4b505bc78459e4353d6dadb81c4a9c1f15934d87531bef7d4c52d8e51"
  else
    sha256 "5d88b9c8e51650b46545bcb95842025a58d80c068f9d8f8062a8b6276620d8d3"
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
