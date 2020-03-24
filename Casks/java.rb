cask 'java' do
  version '14,36:076bab302c7b4508975440c56f6cc26a'
  sha256 'f3e7439e19ea22f71a96b5563e0e0967e7df1563f2f9d7922209793498ca4698'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_colon}/#{version.after_comma.before_colon}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://openjdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
