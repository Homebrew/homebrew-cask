cask "graalvm-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25,37"
  sha256 arm:   "6e77f17b01089dfdb0c54cce8aa936847e2a019e0110418813b49b3bd974dc90",
         intel: "f99e3eea4808a0b73b559e28c4646cf091df12d6a4c065fef34664ab17299137"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://java.oraclecloud.com/currentJavaReleases/#{version.major}"
    regex(/(?:jdk[._-])?(\d+(?:\.\d+)*)(?:-\d+)?\+(\d+)/i)
    strategy :json do |json, regex|
      match = json["releaseFullVersion"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # FIXME: Change 11 back to #{version.csv.second} on the next release
  artifact "graalvm-jdk-#{version.csv.first}+#{version.csv.second}.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
