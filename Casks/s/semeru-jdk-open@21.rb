cask "semeru-jdk-open@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12.15"
  sha256 arm:   "df1e3d33948d24acdae71636452920365c1e3b40e75b95544740b3209275f02c",
         intel: "72ac455ba68d268d29d85b2cd9e8bfd1f9a9ecd03bef757758f3d9fd90e2d2de"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"
  name "IBM Semeru Runtime (JDK 21) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/semeru-runtimes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  # No zap stanza required
end
