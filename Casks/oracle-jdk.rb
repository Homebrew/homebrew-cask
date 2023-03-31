cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "20"
  sha256 arm:   "94a2f19bd05baaad6abb82c94714b7588f44de216b1c2281e01b1a903d400eae",
         intel: "c150e49257554fd33aec2ba19da4dcf5de2ede6c4372d6cd31773868ccea6dcf"

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
