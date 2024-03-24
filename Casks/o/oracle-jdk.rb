cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22"
  sha256 arm:   "8be8f4b6343d4c9b27e367fd0c925d04d9f5a10b93483bd9230bc93706ac309a",
         intel: "0281b46281cd0ea98124f7816b712d31842d46e766f28f7ae67f2cc3ff7189bf"

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
