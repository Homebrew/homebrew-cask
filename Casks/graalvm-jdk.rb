cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.2"
  sha256 arm:   "f1b1068672feef3dc66cba8ccccc14d623b26e284870a156bb10ea3ea51af706",
         intel: "72c74c3702437824cba3db3435897cce3643e9443acac59f6cfd43f9444b1004"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(\d+(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+9.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
