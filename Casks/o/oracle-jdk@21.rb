cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.7"
  sha256 arm:   "e463e3900f357f4f50604c7d4bcffb31d33886ce1c8a3f170ebcd5221e573fc6",
         intel: "dc34b13e959ee652dbb4a32353b03fc886a001bd6adab90a539089adce3fffb1"

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase/#{version.major}u-relnotes.html"
    regex(/<li>\s*JDK\s*v?(\d+(?:\.\d+)*)/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
