cask "semeru-jdk-open@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.5.0"
  sha256 arm:   "523f85b78b49f5f0d50b09a73ef813d5268771d01f6e3cf22235ee431598c7b7",
         intel: "ceb2f10b9dbc496e1e4fd0210376101c4c34da78d3d6e68e3961bc77bd223216"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"
  name "IBM Semeru Runtime (JDK 25) Open Edition"
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
