cask 'java' do
  version '14.0.2,12:205943a0976c4ed48cb16f1043c5c647'
  sha256 '386a96eeef63bf94b450809d69ceaa1c9e32a97230e0a120c1b41786b743ae84'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_colon}/#{version.after_comma.before_colon}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://openjdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
