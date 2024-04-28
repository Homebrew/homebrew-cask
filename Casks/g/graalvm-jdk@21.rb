cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.3"
  sha256 arm:   "501b3163e663f154bd816fa889810f94004530e6fcef62e6e87554247d0952c0",
         intel: "6d29cacd2e3b46ee33d573757f1098fec5b487a89a98f68a5315d45a4f89a1bb"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(21(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+7.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
