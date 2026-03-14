cask "semeru-jdk-open@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.18.1,17.0.18,8.1,openj9-0.57.0"
  sha256 arm:   "75e59331d784a3be81b27451c4c0705c18bf00894b168fb5e27c62c248c7af54",
         intel: "c21faa13ebe8d94f0d17b3fef06be66c50fca06be097a1036b338ecd8bea1867"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.second}%2B#{version.csv.third}_#{version.csv.fourth}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 17) Open Edition"
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
