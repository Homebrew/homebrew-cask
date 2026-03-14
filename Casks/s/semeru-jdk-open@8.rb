cask "semeru-jdk-open@8" do
  version "8.0.482.1,8u482,b08.1,openj9-0.57.0"
  sha256 "3273fca81b8a06265cc9ca6d973785adbe4bcc995798009da7c2ef07e2a3f972"

  url "https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk#{version.csv.second}-#{version.csv.third}_#{version.csv.fourth}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first}.pkg",
      verified: "github.com/ibmruntimes/semeru8-binaries/"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/semeru-runtimes/"

  livecheck do
    url :url
    regex(%r{
      /(?:jdk)?(\d+u\d+)[._-](b(?:\d+(?:\.\d+)*))[._-]([^/]+)/
      ibm[._-]semeru[._-]open[._-]jdk[._-]x64[._-]mac[._-]v?(\d+(?:\.\d+)+)\.pkg
    }ix)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[4]},#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
