cask "semeru-jdk-open@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.4+7,openj9-0.46.1"
  sha256 arm:   "3ba2bee98320b28865264578784840c8dd5087edc0a045c3e67d8c840c54568f",
         intel: "e0b726dabc34df27ba19d639bc59e50cae3981fc775016b44be6a587f8dd95c0"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 21) Open Edition"
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
