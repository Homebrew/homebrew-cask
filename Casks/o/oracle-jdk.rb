cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.1"
  sha256 arm:   "93babc6eda1f595a1fbaa9ee91fd718e7651b55275049d9b19ef7f7a0d3d8122",
         intel: "5f3cde6e5eb03455fe7cb6fc9d33172943e4d5339d73621e1c0a63ac91840908"

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

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
