cask "semeru-jdk-open@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.12.10"
  sha256 arm:   "c54e89c313a0f504b591c2bf52636dd6229806bd1e028b4197ef6a7dba5a18aa",
         intel: "c88424e553aa7055bf2271ec7c576f10ffdec67ab6b0914e7808d03e99109e1b"

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
