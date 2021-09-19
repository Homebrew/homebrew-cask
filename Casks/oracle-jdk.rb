cask "oracle-jdk" do
  version "17"

  if Hardware::CPU.intel?
    sha256 "2a7befd5f8b27194f03451e939ffe4d9fc2acc172eef27f89f924ea9ba8157a7"

    url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-x64_bin.dmg"

  else
    sha256 "4d15daeaa3fb40740a2f8b9e54dcac7a485e6bcd72d60c131645e39808fd7549"

    url "https://download.oracle.com/java/#{version.major}/latest/jdk-#{version}_macos-aarch64_bin.dmg"
  end

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

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
