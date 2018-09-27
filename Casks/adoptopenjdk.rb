cask 'adoptopenjdk' do
  version '10.0.2,13'
  sha256 '5fe24ab7845005c94bddf5f28bd876b63a2a316f7ab757a5d1eddc24e229b7ae'

  url "https://github.com/AdoptOpenJDK/openjdk10-releases/releases/download/jdk-#{version.before_comma}+#{version.after_comma}/OpenJDK10_x64_Mac_jdk-#{version.before_comma}.#{version.after_comma}.tar.gz"
  appcast 'https://github.com/AdoptOpenJDK/openjdk10-releases/releases.atom'
  name 'OpenJDK'
  homepage 'https://github.com/AdoptOpenJDK/openjdk10-releases'

  artifact "jdk-#{version}+#{build}/", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}+#{version.after_comma}"
end
