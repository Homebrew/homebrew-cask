cask "oracle-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.2"

  if Hardware::CPU.intel?
    sha256 "7dc9d3a21b6d92adfc45bd97788ee252db7795506c1f22307b67aeb24cb034c0"
  else
    sha256 "1eefb9593441a8b1bde6777e142144460f7224d482befdf60b3d28cb16a931cc"
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
