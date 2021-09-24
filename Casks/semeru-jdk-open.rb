cask "semeru-jdk-open" do
  version "16.0.2+7,openj9-0.27.0"
  sha256 "151dfbf918682663e28187ed3b59b06e8c5c8ad39f57dada42612aa8290e8977"

  version_before_plus = version.before_comma.sub(/\+\d+/, "")
  version_after_plus = version.before_comma.sub(/^[^+]+\+/, "")

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version_before_plus}%2B#{version_after_plus}_#{version.after_comma}/ibm-semeru-open-jdk_x64_mac_#{version_before_plus}_#{version_after_plus}_#{version.after_comma}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  # The download page is rendered using JavaScript. The source json data is embedded
  # in a <script> at the bottom of the page. We match against this json data.
  livecheck do
    url "https://developer.ibm.com/languages/java/semeru-runtimes/downloads"
    regex(%r{
      downloadLink\s*:\s*'.*?/ibm-semeru-open-jdk_x64_mac_ # blurb
      (\d+(?:\.\d+)*)                                      # version_before_plus
      [._-]                                                # separator
      (\d+)                                                # version_after_plus
      [._-]                                                # separator
      (openj9[._-]\d+(?:\.\d+)*)\.pkg                      # version.after_comma
    }xi)
    strategy :page_match do |page|
      page.scan(regex).map do |match|
        (match[0] && match[1] && match[2]) ? "#{match[0]}+#{match[1]},#{match[2]}" : ""
      end
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version_before_plus}_#{version_after_plus}_#{version.after_comma}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
