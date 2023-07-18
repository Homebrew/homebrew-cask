cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.2"
  sha256 arm:   "c2084e8700ebfb94160a358a6c644f1a6a2f5bd9f209e848e983994bc4fbf7c5",
         intel: "2484604784c3d16100ecd7e8e0f0e497ea38325aeceb3e72ad5abb764d8e55c7"

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
