cask "semeru-jdk-open@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.10.1,21.0.10,7.1,openj9-0.57.0"
  sha256 arm:   "d9fc00a70d691e529e4577db3d6b93c3524317186957de96dab3a746efd92d22",
         intel: "dd9d3bf01a38163c8ddc00182018c0c6719d08ff35d1687131f41f2a3e32e17a"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.second}%2B#{version.csv.third}_#{version.csv.fourth}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 21) Open Edition"
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
