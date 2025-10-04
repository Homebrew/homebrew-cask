cask "semeru-jdk-open@25" do
  arch arm: "aarch64", intel: "x64"

  version "25,36,openj9-0.55.0"
  sha256 arm:   "67d222803b35fa2477bc9dd90f4404dbcf64eb1122d3773f9847bfb82ba7398b",
         intel: "ed50b14d55d1fe9f1f8c349c9ccbe038d278e9a19692c9b2904e7f5e4e5ecfc6"

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
