cask 'java' do
  version '12.0.2,e482c34c86bd4bf8b56c0b35558996b9/10'
  sha256 '675a739ab89b28a8db89510f87cb2ec3206ec6662fb4b4996264c16c72cdd2a1'

  url "https://download.oracle.com/java/GA/jdk#{version.before_comma}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
