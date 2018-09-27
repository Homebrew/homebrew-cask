cask 'openjdk' do
  version '10.0.2.13'
  sha256 '5fe24ab7845005c94bddf5f28bd876b63a2a316f7ab757a5d1eddc24e229b7ae'

  url "https://github.com/AdoptOpenJDK/openjdk10-releases/releases/download/jdk-#{version}/OpenJDK10_x64_Mac_jdk-#{version}.tar.gz"
  appcast 'https://github.com/AdoptOpenJDK/openjdk10-releases/releases.atom'
  name 'OpenJDK'
  homepage 'https://github.com/AdoptOpenJDK/openjdk10-releases'

  auto_updates false

  binary "/Library/Java/JavaVirtualMachines/#{version}/bin/java"
  binary "/Library/Java/JavaVirtualMachines/#{version}/bin/javac"
  artifact "jdk-#{version}/", target: "/Library/Java/JavaVirtualMachines/jdk-#{version}"

  uninstall rmdir: [  "/Library/Java/JavaVirtualMachines/jdk-#{version}",
                      '~/Library/Application Support/Java',
                      '~/Library/Application Support/JREInstaller'
  ]
end
