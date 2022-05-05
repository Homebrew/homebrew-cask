cask "oracle-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.1.1"

  if Hardware::CPU.intel?
    sha256 "1725de224350c79906ea10546fa8186638f875c12f0b2161442278e8cf444369"
  else
    sha256 "6ef544cd2318051c1033564a352142c78ad448f9cca8ae87d289499f47d97838"
  end

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

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
