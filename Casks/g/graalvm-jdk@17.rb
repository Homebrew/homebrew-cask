cask "graalvm-jdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.12"
  sha256 arm:   "4cdfdc6c9395f6773efcd191b6605f1b7c8e1b78ab900ab5cff34720a3feffc5",
         intel: "3ecac1471f3fa95a56c5b75c65db9e60ac4551f56eda09eb9da95e6049ea77d7"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(17(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+8.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/latest/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
