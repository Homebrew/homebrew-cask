cask "graalvm-jdk@17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.13"
  sha256 arm:   "3305ca55dcc626745b338cd1755de5bbcf1a647b63737361fb3c1821eddbaae1",
         intel: "bc19284b9db6c150fcbdfebaa9f3dc2bf722af1c62b6cca2cad682cba043642c"

  url "https://download.oracle.com/otn/utilities_drivers/oracle-labs/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
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
