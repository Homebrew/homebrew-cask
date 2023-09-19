cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "21"
  sha256 arm:   "c2ca434adef1e497c8a4d942ae1dbf6bbd1c8174a6fcdafc65cde0e853285300",
         intel: "0744ab104998f8f45d9ae582134963f5d273286dff9aff586aed24f5f8434660"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(\d+(?:\.\d+)?)/i)
  end

  artifact "graalvm-jdk-#{version}+9.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
