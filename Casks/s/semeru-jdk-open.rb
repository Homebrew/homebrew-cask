cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.1,8,openj9-0.56.0"
  sha256 arm:   "02746852cb75840f5ac94d84ca95d1793d225d133403f66ad1bf4feda6e9e1c6",
         intel: "e9883c210bd15c5543749c5ebf9e809c29a3cf430ce66fef7bf07722cc67e893"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}_#{version.csv.third}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.pkg",
      verified: "github.com/ibmruntimes/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url :url
    regex(/^jdk[._-]v?(\d+(?:\.\d+)*)\+(\d+)[._-](.+?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  # No zap stanza required
end
