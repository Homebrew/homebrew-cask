cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.2"
  sha256 arm:   "1c63d9d1f19c444845fd2e71c0b16d53b36d627584002fb43979fdeaca3fd33c",
         intel: "5afa5408ec83310c1407c0d9c65b474f65e56447eece4d1b1b29c36b95ee5a29"

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
