cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.2"
  sha256 arm:   "c0370183e3689fac4d44831c9e6a3e706510f05fd29b1f1cb0a4670e5721375d",
         intel: "c089bf813380ef7a08f94affe98ad607fc6124d5ee78909e1bd91ecaace927b8"

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
