cask "semeru-jdk-open@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.11.0"
  sha256 arm:   "3e4a095806c1413ed3e54aad638391ee3ed0a4378d52b12e9dbd66d3985591c7",
         intel: "63ddaa9f02e0a5b1155584093a13cabd7871013348dfcd01500cdb5ff9e9724a"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
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
