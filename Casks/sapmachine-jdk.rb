cask "sapmachine-jdk" do
  version "16.0.1"
  sha256 "858bf721b32f839011ecbc2f387a1133c93cfec8bbf147d13f23a96553bbe40d"

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
