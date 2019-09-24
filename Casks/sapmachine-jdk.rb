cask 'sapmachine-jdk' do
  version '13'
  sha256 'd4f85394cb02db999baa906dedf51897b7b99189cd4c44f298c305529ee0cb2a'

  # github.com/SAP/SapMachine was verified as official when first introduced to the cask
  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.dmg"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine OpenJDK Development Kit'
  homepage 'https://sapmachine.io/'

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
