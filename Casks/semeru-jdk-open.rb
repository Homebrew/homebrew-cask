cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.1+9,openj9-0.39.0"
  sha256 arm:   "d312ae562c363875d44a2d5d5af677e7e90bc26e94f286bfb20a60c4a6697925",
         intel: "a775c711ff62153cb6965ca63e69da282ef23116973672965495428b00d2d554"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url :stable
    regex(/^jdk[._-](\d+(?:[.+]\d+)*)[._-](.+?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  # No zap stanza required
end
