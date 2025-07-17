cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.8,12"
  sha256 arm:   "3de4049d254dd3c04fd65a66be904d6cf490dca4ece2e2b5fcdfa91d34760f4f",
         intel: "1a63681c9042f92f27da535c3b0fada62aae094da1f705ecb0ef0270b80f873b"

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
