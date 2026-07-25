cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.3.0"
  sha256 arm:   "1a8f15731320a62309f2b3ffd69daf1f332ed9120478499650ebe6cb38c71163",
         intel: "03f32b1571e79c3dd74a9257dab15bec280882d8df415079812f0ba7faf3e893"

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
