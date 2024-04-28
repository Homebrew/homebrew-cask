cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.3"
  sha256 arm:   "bbc26886d3664a93f8914fadce317d2b0947d236b88fa7f022ef349c656c29dd",
         intel: "652842efa5c20497dbf35d08538e147f82267b556bcea419343d1b62f2ef2e04"

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
