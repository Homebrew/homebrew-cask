cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23"
  sha256 arm:   "63290bf6242836ac46ca4c8c4ad048e4482fdb3f8276b9689088f059be430687",
         intel: "d516ea854e361a821c7679d127ff7126c254b8c43c99e571e203df218df2764b"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/GraalVM\s+for\s+JDK\s+v?(\d+(?:\.\d+)*)\s+downloads/im)
  end

  artifact "graalvm-jdk-#{version}+37.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
