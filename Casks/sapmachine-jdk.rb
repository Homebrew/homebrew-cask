cask 'sapmachine-jdk' do
  version '14.0.1'
  sha256 '70627d74dafb9d21a766365e3184b872a160ec17099c5fbc41926c6e9ccf4c9f'

  # github.com/SAP/SapMachine/ was verified as official when first introduced to the cask
  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.dmg"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine OpenJDK Development Kit'
  homepage 'https://sapmachine.io/'

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
