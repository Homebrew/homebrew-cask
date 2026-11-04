cask "semeru-jdk-open@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.33.0"
  sha256 arm:   "eeaf8f266fc17df218cb8a2f7d1809647defc85252b9677b13481c0fc689088c",
         intel: "ec00434ada0dd33a5f65a3397b42b1e0eeee0c7bc6df3b0979dfb6af3d5f738c"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"
  name "IBM Semeru Runtime (JDK 11) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/semeru-runtimes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  zap :not_required
end
