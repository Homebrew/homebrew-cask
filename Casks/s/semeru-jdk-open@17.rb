cask "semeru-jdk-open@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.20.10"
  sha256 arm:   "d6697ddc2144336c36d4df46325dae145ff27a64e25203b3b385e76353c594cc",
         intel: "c02e7dd2c23da7e63ff0733501fc1d9afdd194e8434ad3fffd46d19ff33af055"

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
