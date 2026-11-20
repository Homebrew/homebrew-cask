cask "semeru-jdk-open@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.21.0"
  sha256 arm:   "6ec3f89be676346bce39525665b7e3bfd0c9f8f8ef1426dea7094257502905c2",
         intel: "8c86ebf887aa2436abe80eff4ccf2f0e8e1b716d39b78d2ad9f5dc68c59c5116"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_#{arch}_mac_#{version}.pkg"
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

  zap :not_required
end
