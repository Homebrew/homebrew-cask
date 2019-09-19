cask 'java12' do
  version '12.0.2,10:e482c34c86bd4bf8b56c0b35558996b9'
  sha256 '675a739ab89b28a8db89510f87cb2ec3206ec6662fb4b4996264c16c72cdd2a1'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_colon}/#{version.after_comma.before_colon}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://openjdk.java.net/'
  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
