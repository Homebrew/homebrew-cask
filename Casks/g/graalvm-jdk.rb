cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.2"
  sha256 arm:   "0e644b92d03d39bdf4842e378b8b22713faaa4edae8efff0da9929d1e04dd0cb",
         intel: "b4599fbfd394304a84e9435bf7c673069d4fe0c565d2d44d70f0f6f5804cea35"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/GraalVM\s+for\s+JDK\s+v?(\d+(?:\.\d+)*)\s+downloads/im)
  end

  artifact "graalvm-jdk-#{version}+7.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
