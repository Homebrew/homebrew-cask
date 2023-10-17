cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.1"
  sha256 arm:   "4c8dfd364e66aaf67ae7e2094c7183a7c144a68fdcaaaed8eca25602b2acae9f",
         intel: "214f3f9a660de5e0bf8459b645b07c7a363cec070d2ca0236a67db38f7a81da4"

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
