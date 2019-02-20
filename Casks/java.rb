cask 'java' do
  version '11.0.2,9'
  sha256 'f365750d4be6111be8a62feda24e265d97536712bc51783162982b8ad96a70ee'

  url "https://download.java.net/java/GA/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
