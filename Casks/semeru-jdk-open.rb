cask "semeru-jdk-open" do
  version "18.0.1.1+2,openj9-0.32.0"
  sha256 "ff63b5e7e97f1e55eb0d1cdedd9d36fff4d5e4869f916a24d1c5855ab16bd086"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases"
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/jdk[._-](\d+(?:[._+]\d+)+)[._-]([^&]+)&quot;}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
