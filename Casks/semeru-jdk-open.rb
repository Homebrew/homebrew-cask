cask "semeru-jdk-open" do
  version "18.0.1+10,openj9-0.32.0"
  sha256 "07c06c863324870d0ad9bd34df952c1d88e8d8834b9e60364eb027e2bfba6369"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://developer.ibm.com/middleware/v1/contents/static/semeru-runtime-downloads"
    regex(/["'][^"']*ibm-semeru-open-jdk_x64_mac[._-](\d+(?:[._]\d+)+)[._-]([^"']+)\.pkg["']/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", "+")},#{match[1]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
