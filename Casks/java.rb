cask 'java' do
  version '13,33:5b8a42f3905b406298b72d750b6919f6'
  sha256 '1a9c096630a0e4f27ce61ac9e477378b8581c537568186d4afd0b416a7e9dd68'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_colon}/#{version.after_comma.before_colon}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://openjdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
