cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.2"
  sha256 arm:   "10c0fd23163da4afe2b4d962f2f5acddcdd096e34b2f2d0e6814f360161ac5d4",
         intel: "d4956c39f4c2a34214160e6912deaa3b7e7f8ddd845b9a6059e993c2ec65e8bb"

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
