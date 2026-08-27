cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.4.10"
  sha256 arm:   "c6da9ef30b526ad3ebfa82fe7a0e7489f4081a8fec7dac3351ee5bbf48e24dcb",
         intel: "d71d3e4334a6f70ba43f2f981ccf28040b5a335e41f1c516d0abb750d09ffd10"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK) Open Edition"
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
