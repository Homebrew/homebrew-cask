cask 'java' do
  version '12.0.1,69cfe15208a647278a19ef0990eea691'
  sha256 'cba6f42f82496f62c51fb544e243d440984d442bdc906550a30428d8be6189e5'

  url "https://download.oracle.com/java/GA/jdk#{version.before_comma}/#{version.after_comma}/#{version.major}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
