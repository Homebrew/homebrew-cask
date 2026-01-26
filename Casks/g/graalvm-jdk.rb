cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "25.0.2,10"
    sha256 "48584aa5ae0f4df088d63da7bfdf415858ea3407385fb4f559bc4d7e1b300151"

    livecheck do
      url "https://java.oraclecloud.com/currentJavaReleases"
      regex(/(?:jdk[._-])?(\d+(?:\.\d+)*)(?:-\d+)?\+(\d+)/i)
      strategy :json do |json, regex|
        json["items"]&.map do |item|
          match = item["releaseFullVersion"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end
    end
  end
  on_intel do
    version "25.0.1,8"
    sha256 "a762ca1d9a163e32790b9286f3af4c16369729ff27999d8dbab60d7be16cff2f"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  # FIXME: Change 11 back to #{version.csv.second} on the next release
  artifact "graalvm-jdk-#{version.csv.first}+#{version.csv.second}.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
