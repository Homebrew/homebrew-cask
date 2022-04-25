cask "oracle-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.1"

  if Hardware::CPU.intel?
    sha256 "d458b36fcc04522cf179fd963dcc7fc3bea0fa3c74608dc04b4bc199a7397c13"
  else
    sha256 "0e919d9f0860ffaaa4ef4aa8c3effb4380a0abaded2b949850e5eb3a4bf46ab4"
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
