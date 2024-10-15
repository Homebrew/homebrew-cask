cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.1"
  sha256 arm:   "c00a7a62ce453aa026bff65e5a18c63464f725c01e5a71771856226928ba5b0f",
         intel: "539699d8ff4979623bc7bdf8282ac6f76cd2560f47d14ec5438bada24f136f96"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/GraalVM\s+for\s+JDK\s+v?(\d+(?:\.\d+)*)\s+downloads/im)
  end

  artifact "graalvm-jdk-#{version}+11.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
