cask "semeru-jdk-open@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.30.1,11.0.30,7.1,openj9-0.57.0"
  sha256 arm:   "95ca54a8082534ae4bb32e2c885fbb4fed4f4519f5cac619314b254de66c28c9",
         intel: "4b3f3adadcb025e109ad589e29b2959ba5cdc1f56b74bea8d2acf07f8d1eb054"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.second}%2B#{version.csv.third}_#{version.csv.fourth}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 11) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/semeru-runtimes/"

  livecheck do
    url :url
    regex(%r{
      /jdk[._-]v?(\d+(?:\.\d+)*)%2B(\d+(?:\.\d+)*)[._-]([^/]+)/
      ibm[._-]semeru[._-]open[._-]jdk[._-]#{arch}[._-]mac[._-]v?(\d+(?:\.\d+)+)\.pkg
    }ix)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[4]},#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  # No zap stanza required
end
