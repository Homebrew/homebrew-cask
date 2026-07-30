cask "semeru-jdk-open@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.20.0"
  sha256 arm:   "5c52ccfa769ea833f43258932935138cc12b5015df03c242928ea5f377c6af21",
         intel: "2747b7fc738f35fb681da008a019c7906f429d784e201e2c25f9c5a653570f7a"

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
