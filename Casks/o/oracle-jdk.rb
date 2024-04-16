cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.1"
  sha256 arm:   "ad95ee003c836c5eecf961eb4402edf7db58b678e8ac5cd834282bfa89eb5ba1",
         intel: "ab2159bf78b04cfa0c0753da7053e04976d8c8a09f81841c5f48307288927e9b"

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
