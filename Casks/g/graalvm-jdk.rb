cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.1"
  sha256 arm:   "7735153e287cd63a29bb1031f2c018770a2734e5c7cb28ab5143a1bd2b4ad45f",
         intel: "c1a477f4be38130f30ce745cebbb580f71c6159d94503e3e10b7ab5a7c4da66b"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/GraalVM\s+for\s+JDK\s+v?(\d+(?:\.\d+)*)\s+downloads/im)
  end

  artifact "graalvm-jdk-#{version}+8.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
