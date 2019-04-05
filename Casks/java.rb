cask 'java' do
  version '12,33'
  sha256 '52164a04db4d3fdfe128cfc7b868bc4dae52d969f03d53ae9d4239fe783e1a3a'

  url "https://download.java.net/java/GA/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
