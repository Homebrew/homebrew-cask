cask 'openjdk' do
  version 'jdk8u172-b11'
  sha256 'c271c5aeebfec5cd6f41c24092472a66fc55f893e3118e63f4c1ab1cb4446157'

  url "https://github.com/AdoptOpenJDK/openjdk8-releases/releases/download/#{version}/OpenJDK8_x64_Mac_#{version}.tar.gz"
  appcast 'https://github.com/AdoptOpenJDK/openjdk8-releases/releases.atom'
  name 'OpenJDK'
  homepage 'https://github.com/AdoptOpenJDK/openjdk8-releases'

  auto_updates true

  binary "/Library/Java/JavaVirtualMachines/#{version}/bin/java"
  artifact "#{version}/", target: "/Library/Java/JavaVirtualMachines/#{version}"
end
