cask "semeru-jdk-open@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.2.1,25.0.2,10.1,openj9-0.57.0"
  sha256 arm:   "a69c459c8c3af34da19d4d7ebcb7af88d75428d0ab2dd531d60d32570d3e62c2",
         intel: "b6a67db95342effe3d89c8eff8350913e34e9dc7c16552128538df40c64ded9f"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.second}%2B#{version.csv.third}_#{version.csv.fourth}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}.pkg",
      verified: "github.com/ibmruntimes/"
  name "IBM Semeru Runtime (JDK 25) Open Edition"
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
