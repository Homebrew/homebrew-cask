cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.1"
  sha256 arm:   "ff42d8184519ca097d74189f3472b8fb0f762eec010db2544e79783abce9a0a0",
         intel: "e5571d8fd68af8f35da6f6989ea9b10a4c9293fd48ef557b18a631f787fee28b"

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase/#{version.major}u-relnotes.html"
    regex(/\n<li>\s*JDK\s*v?(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
