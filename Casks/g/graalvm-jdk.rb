cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "24.0.2,12"
  sha256 arm:   "2dc7634ed939c725d41a353f73443ff32e70f2fb577367f12a6936107e3494dc",
         intel: "df0f9e5d101201c50bfa6baa3c657a81a2883c5b5097a9f5ab93dab86f7e3ba2"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

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

  # FIXME: Change 11 back to #{version.csv.second} on the next release
  artifact "graalvm-jdk-#{version.csv.first}+11.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
