cask "semeru-jdk-open@11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.27+6,openj9-0.51.0"
  sha256 arm:   "b4284149baad0cb3a8f6124a83845d4fa9659332a1cec04ea51a111ac90833c5",
         intel: "f3f6c0981f7288367a8ac775b349db70e8d2bc67cfe9be8dfd4302c714adfd56"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 11) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url :url
    regex(/^jdk[._-](\d+(?:[.+]\d+)*)[._-](.+?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  # No zap stanza required
end
