cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.2,7,openj9-0.49.0"
  sha256 arm:   "cbbba17449a53edd3b77258088ba91ddd186a4c858ccabfaf6559ab7fa311428",
         intel: "705eeaab487945177a26b3bbea7164023582994b1a8987ddf56269da520c781d"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}_#{version.csv.third}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.pkg",
      verified: "github.com/ibmruntimes/"
  name "IBM Semeru Runtime (JDK) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url :url
    regex(/^jdk[._-](\d+[\.\d+]*)[+](\d+)[._-](.+?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"

  # No zap stanza required
end
