cask 'sapmachine-jdk' do
  version '11.0.2'
  sha256 'c17526aca0891ab291916faeca7a6cdcef77d63de8acb8362c1af0eb95a9c680'

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.tar.gz"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine Java Development Kit'
  homepage 'https://github.com/SAP/SapMachine'

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
