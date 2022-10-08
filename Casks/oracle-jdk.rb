cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "19"
  sha256 arm:   "df7b27c92dcd780be034a875760216cdd7c90b606a1ce616738df71b58da8b76",
         intel: "bce5b19babca720c0d23594c60dfd3424d6678239d04f04c27e251c2cb8f64a3"

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
