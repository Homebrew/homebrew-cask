cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "21"
  sha256 arm:   "7afb19ad9b5bbc6a41b5f464752bb92723c6c4bcf167f5a4c97472359a314648",
         intel: "423f76ad31196919064a7859068a2d20c97e7a8c1eb643060412cbba5d21b598"

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
