cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.2"
  sha256 arm:   "1bd6d873e447651f4df8d4c8fb2c092ac6070a27d55bc3ab4c0f8d7efe69b8de",
         intel: "7af72f5235ad1edf8e49fcf6694004b50d06cc4b34bd2ad0e46c7af38ed57535"

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
