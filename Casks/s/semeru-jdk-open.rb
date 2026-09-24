cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.4.15"
  sha256 arm:   "d2fc8295d7a8f9bb8869cb375a8854902e20158cf9ba544443d7afc5f6887190",
         intel: "6d613d24134136e44d8a6440736b4fb6c55cccdd5bb5c82b642c2a9f6ee6891d"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"
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
