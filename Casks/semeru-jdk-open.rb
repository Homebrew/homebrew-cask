cask "semeru-jdk-open" do
  version "16.0.2+7,openj9-0.27.0"
  sha256 "151dfbf918682663e28187ed3b59b06e8c5c8ad39f57dada42612aa8290e8977"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.before_comma}_#{version.after_comma}/ibm-semeru-open-jdk_x64_mac_#{version.before_comma.tr("+", "_")}_#{version.after_comma}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://developer.ibm.com/languages/java/semeru-runtimes/downloads"
    regex(%r{["'][^"']*ibm-semeru-open-jdk_x64_mac[._-](\d+(?:[._]\d+)+)[._-](.+)\.pkg["']}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", "+")},#{match[1]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.before_comma}_#{version.after_comma}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
