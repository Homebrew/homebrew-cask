cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "21.0.11,9"
    sha256 "e6bcbf3b31a5ec5d3c092c3fd5782d86471f0339de6e2b32961f00963a3643f2"

    livecheck do
      url "https://java.oraclecloud.com/currentJavaReleases/#{version.major}"
      regex(/(?:jdk[._-])?(\d+(?:\.\d+)*)(?:-\d+)?\+(\d+)/i)
      strategy :json do |json, regex|
        match = json["releaseFullVersion"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end
  on_intel do
    version "21.0.9,7"
    sha256 "aaf06b193ea1a05662d4a5a05e899eb51f8881eee4319db044707e79dcabbb32"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  artifact "graalvm-jdk-#{version.csv.first}+#{version.csv.second}.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
