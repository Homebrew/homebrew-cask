cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.4"
  sha256 arm:   "a722a8eb23b8db2b2468e86bf1ad2e9df63d974161b80fa2004bd386df87c20d",
         intel: "bdb2156542a30147c94a9a26fc199ed24bb76d8dba49e0de7799c1ca6566c3e8"

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
