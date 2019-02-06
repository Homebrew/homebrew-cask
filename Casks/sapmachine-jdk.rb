cask 'sapmachine-jdk' do
  version '11.0.1,13-0'
  sha256 '600fc431d96fbc0b22a3cb160a1b1fbe878b887efd5be99668f3cf9677aa11cc'

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version.before_comma}+#{version.after_comma}/sapmachine-jdk-#{version.before_comma}.#{version.after_comma.split('-').first}_osx-x64_bin.tar.gz"
  appcast "https://sap.github.io/SapMachine/latest/#{version.before_comma}"
  name 'SapMachine Java Development Kit'
  homepage 'https://github.com/SAP/SapMachine'

  artifact "sapmachine-jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
