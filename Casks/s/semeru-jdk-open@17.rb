cask "semeru-jdk-open@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.19.0"
  sha256 arm:   "0d7b6416fc343836a6e839b09f34e5cbef1543c37f53873fa18d05705791d9bf",
         intel: "052b311420de6899153695d834ee1c50e4d97efae93e49873de112b25286a7a6"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 17) Open Edition"
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
