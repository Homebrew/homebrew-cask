cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "18.0.2.1"

  on_intel do
    sha256 "3f95ffebee60c76c4603624da0f36510c3ebd46b1dfadb7ca342821c40e89845"
  end
  on_arm do
    sha256 "d9ee92a70ecb8f0058155734cb42a85a782f57b222293a27f1990e2962f15ce7"
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
