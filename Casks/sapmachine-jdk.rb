cask 'sapmachine-jdk' do
  version '14.0.2'
  sha256 '9c11682ba91c4285f8ca56682114a46c2e0bf723b65b81060b6f8403d681ff1f'

  # github.com/SAP/SapMachine/ was verified as official when first introduced to the cask
  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.dmg"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine OpenJDK Development Kit'
  homepage 'https://sapmachine.io/'

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
