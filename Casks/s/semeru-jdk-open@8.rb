cask "semeru-jdk-open@8" do
  version "8u462-b08,openj9-0.53.0"
  sha256 "5316e041f6e803d8231e9418bee799cb95ed29d6a2466a4ada11fa47eec9cb33"

  url "https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru8-binaries/"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url :url
    regex(/^(?:jdk)?(\d+u\d+)[._-](b\d+)[._-](.+?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]}-#{match[1]},#{match[2]}" }
    end
  end

  disable! date: "2026-09-01", because: :unsigned

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
