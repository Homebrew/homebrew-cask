cask "oracle-jdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.11"
  sha256 arm:   "428ef17615f41a953f9bd3a21130a7f435a96f9a47cc6ec4ec46365b4ba2f053",
         intel: "0c06b0b6579d3c28f4e1e6672319c825b7cfdf210c77d0ee66f2c0ec4fccb992"

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
