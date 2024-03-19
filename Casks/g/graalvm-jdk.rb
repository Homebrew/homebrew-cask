cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22"
  sha256 arm:   "61632065cfcdc4e121362f1fd25a543955836bbacd6c1aadbcbe0d469d5ab8a3",
         intel: "5b83f20dbc4c636ed41f19c3309f09839d4f5c6442dba986f460589c494a476c"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/GraalVM\s+for\s+JDK\s+v?(\d+(?:\.\d+)*)\s+downloads/im)
  end

  artifact "graalvm-jdk-#{version}+36.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
