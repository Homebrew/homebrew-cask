cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.1"
  sha256 arm:   "5f2c18a69198b31de9144e329d79671b1eb7de57cdb294b78d9c311c2e017ea7",
         intel: "73ea365de8579c3d144d270726ceba0dcc3d4e210775a2db495519f7c8e08aa1"

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
