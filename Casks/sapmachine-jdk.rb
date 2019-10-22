cask 'sapmachine-jdk' do
  version '13.0.1'
  sha256 '7b77d7eb6dd625fac75b857d6ead53f946fd905e73c463a24f8e3c7e93706a20'

  # github.com/SAP/SapMachine was verified as official when first introduced to the cask
  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.dmg"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine OpenJDK Development Kit'
  homepage 'https://sapmachine.io/'

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
