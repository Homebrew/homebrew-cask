cask "sapmachine-jdk" do
  version "17"

  if Hardware::CPU.intel?
    sha256 "0b29168998bf0a72107aca7eff5a1d80a9dacbe5af5cbdbf6026a746ff093dfe"

    url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-x64_bin.dmg",
        verified: "github.com/SAP/SapMachine/"
  else
    sha256 "e993513eb8837399507009ebbc8f980de6fd57ce55196a2e102bfd7fb617530f"

    url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-aarch64_bin.dmg",
        verified: "github.com/SAP/SapMachine/"
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
