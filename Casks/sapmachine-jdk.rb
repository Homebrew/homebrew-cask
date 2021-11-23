cask "sapmachine-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.1"

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-#{arch}_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  if Hardware::CPU.intel?
    sha256 "86a3c95d2f7f478677aacbbd498637027b5f270652be75690f475b22483cbef5"
  else
    sha256 "958c37a0875a822e93302365701dbd78546da5371948615f617154b056585108"
  end

  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK distribution from SAP"
  homepage "https://sapmachine.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*/sapmachine-jdk-(\d+(?:\.\d+)*(?:\+\d+(?:\.\d+)*)?)_macos-(aarch64|x64)_bin\.dmg}i)
  end

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
