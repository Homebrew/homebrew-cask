cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.5"
  sha256 arm:   "cb68cb2c796f42f37a56fcd1385d8b86cca12e0b46c5618a5ed3ec7dd2260f6f",
         intel: "2d9b09e28bc1bb6ff219bf62eacc4626c7740b4f1829ede9ea4450f33e9c0826"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(21(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+9.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
