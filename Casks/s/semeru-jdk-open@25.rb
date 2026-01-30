cask "semeru-jdk-open@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.2,10,openj9-0.57.0"
  sha256 arm:   "681549e99d959208770c0a29959076ffc7ef458b1a886d40c9ccd956528adb7b",
         intel: "ca1176b4b2c92035c0e448a969ac0af0ddbf81f5d0626f8900a42fa42f6e8777"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}_#{version.csv.third}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.pkg",
      verified: "github.com/ibmruntimes/"
  name "IBM Semeru Runtime (JDK 25) Open Edition"
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
