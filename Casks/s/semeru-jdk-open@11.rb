cask "semeru-jdk-open@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.32.0"
  sha256 arm:   "6f22b3e1be9f6d723b02a74ac10ccf68e01197a57c256e4066724c4b7e226afd",
         intel: "8be7a66b0a48af8594e1229d91d5d1f859e7565d56ed0d4fd5c9c5f6b62ffd07"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
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

  # No zap stanza required
end
