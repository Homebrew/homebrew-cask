cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.1"
  sha256 arm:   "b94877df825ccefbe8b6751e087d54aa9b8129f9d2919d29ea18e00900392da1",
         intel: "b6f14aae4f9d6a1514446f6f2b83685e796ec083a205b613a9873b29454333ef"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://github.com/oracle/graal.git"
    regex(/jdk[._-]v?(\d+(?:\.\d+)+)/)
  end

  artifact "graalvm-jdk-#{version}+9.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
