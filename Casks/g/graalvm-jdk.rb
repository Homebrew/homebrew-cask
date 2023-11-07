cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.1"
  sha256 arm:   "4b5ddffad649b3e64853ba230b6e8f7acd65322bb8f11852e0521ab1bb4d8b03",
         intel: "0647d57ec98d7aa19d2801b3ec58697d7eb44a408df511bd49d39f0150a08f87"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(\d+(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+12.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
