cask "oracle-jdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.12"
  sha256 arm:   "a50e76afc6462c2c054f34903459a7cf416ad50a43440dd54593fde341b96957",
         intel: "ea460a93f4b3a7723fb6300366c83deed69246844337bc835e70e9e5a54a855e"

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
