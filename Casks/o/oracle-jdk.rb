cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23"
  sha256 arm:   "c314828b29536d388913bd1358438041f7f9e0bdaed8aaffdc4dbd30731d47e1",
         intel: "00639b85807fa218936b95ed1d10b6297adc8a79b77da79cf247521d52a0d3c9"

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
