cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.4"
  sha256 arm:   "1a38609765bb7f985783b438c0488dca1a03ee2d418c2d94a1aaabd6ea9960be",
         intel: "4cfe4037fbb4190c27899e13ebdee8a034309f7a96e9e20f73fc94b28783a98d"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(21(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+8.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
