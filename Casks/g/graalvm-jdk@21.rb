cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.9,7"
  sha256 arm:   "cda0e0ee16fe06ba0a3203ae77a680c6e696b592b697851e161ae92b66c683a6",
         intel: "aaf06b193ea1a05662d4a5a05e899eb51f8881eee4319db044707e79dcabbb32"

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
