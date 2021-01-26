cask "sapmachine-jdk" do
  version "15.0.2"
  sha256 "35fd651595cac2588de08a943e8bb61ee2dd10146f4b459511ae577e9c3fa42c"

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK release maintained and supported by SAP"
  homepage "https://sapmachine.io/"

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
