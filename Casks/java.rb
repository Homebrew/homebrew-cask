cask 'java' do
  version '12'
  sha256 '52164a04db4d3fdfe128cfc7b868bc4dae52d969f03d53ae9d4239fe783e1a3a'

  url "https://download.java.net/java/GA/jdk#{version}/GPL/openjdk-#{version}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
