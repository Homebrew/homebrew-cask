cask 'java' do
  version '13.0.2,8:d4173c853231432d94f001e99d882ca7'
  sha256 '08fd2db3a3ab6fb82bb9091a035f9ffe8ae56c31725f4e17d573e48c39ca10dd'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_colon}/#{version.after_comma.before_colon}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://openjdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
