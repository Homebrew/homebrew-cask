cask "sapmachine-jdk" do
  version "16"
  sha256 "35fd651595cac2588de08a943e8bb61ee2dd10146f4b459511ae577e9c3fa42c"

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK release maintained and supported by SAP"
  homepage "https://sapmachine.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*/sapmachine-jdk-(\d+(?:\.\d+)*(?:\+\d+(?:\.\d+)*)?)_osx-x64_bin\.dmg}i)
  end

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
