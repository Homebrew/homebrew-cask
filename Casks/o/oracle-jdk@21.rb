cask "oracle-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.6"
  sha256 arm:   "8db5a02851f1c9aad89d7384d4599d62f7dda39dfba0db16038725a1b03539b5",
         intel: "86a0d6ba2a624577454f3707d727a0ee84913ce4b71bd4af9ef34e0cf956783d"

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
