cask "semeru-jdk-open@8" do
  version "8.0.512.0"
  sha256 "628f49ddf020ed686f6a8a6399aa47eb4ac427ad659d2174a1c4bf5873c33300"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version}/ibm-semeru-open-jdk_x64_mac_#{version}.pkg"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/semeru-runtimes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "ibm-semeru-open-jdk_x64_mac_#{version}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  zap :not_required

  caveats do
    requires_rosetta
  end
end
