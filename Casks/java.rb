cask 'java' do
  version '14.0.1,7:664493ef4a6946b186ff29eb326336a2'
  sha256 'd8aa6806e6cc99724395563bf02fc6907a7c801f4caef85b96ad44927193da07'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_colon}/#{version.after_comma.before_colon}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://openjdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
