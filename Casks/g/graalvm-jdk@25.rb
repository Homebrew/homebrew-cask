cask "graalvm-jdk@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.1,8"
  sha256 arm:   "19dfd49ad112e6e6c2bdedc507c6859bf21294fa4c164f1be670d469c65b7993",
         intel: "a762ca1d9a163e32790b9286f3af4c16369729ff27999d8dbab60d7be16cff2f"

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
