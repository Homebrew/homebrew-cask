cask "semeru-jdk-open" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.1,11,openj9-0.49.0-m2"
  sha256 arm:   "d24a420c14b4621b5d27a94b291ecb8849d1fc14b1269470216ee44db13db79a",
         intel: "1c1b55f6bb6158a1aec11eac9c2eb3ce42cb7f5340f4a0d58cd642f43d2f6e6a"

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
