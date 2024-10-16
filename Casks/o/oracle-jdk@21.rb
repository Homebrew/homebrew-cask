cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.5"
  sha256 arm:   "291945b92537058b11447d7f28cf7e9910fce12dafb80e13cb8c08ce54d50ca4",
         intel: "cfe56c9a24d4556672d27c3ba463d80de9e530733bc288b53616e22d5efc2c1c"

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
