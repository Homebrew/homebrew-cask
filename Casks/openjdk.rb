cask 'openjdk' do
  version 'jdk8u172-b11'
  sha256 'c271c5aeebfec5cd6f41c24092472a66fc55f893e3118e63f4c1ab1cb4446157'

  url "https://github.com/AdoptOpenJDK/openjdk8-releases/releases/download/#{version}/OpenJDK8_x64_Mac_#{version}.tar.gz"
  appcast 'https://github.com/AdoptOpenJDK/openjdk8-releases/releases.atom'
  name 'OpenJDK'
  homepage 'https://github.com/AdoptOpenJDK/openjdk8-releases'

  auto_updates true

  binary "/Library/Java/JavaVirtualMachines/#{version}/bin/java"
  binary "/Library/Java/JavaVirtualMachines/#{version}/bin/javac"
  artifact "#{version}/", target: "/Library/Java/JavaVirtualMachines/#{version}"

  uninstall launchctl: [
                         'com.oracle.java.Helper-Tool',
                         'com.oracle.java.Java-Updater',
                       ],
            delete:    [
                         '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin',
                         '~/Library/Preferences/com.oracle.java.Helper-Tool.plist',
                         '/Library/PreferencePanes/JavaControlPanel.prefPane',
                       ],
            rmdir:     [
                         "/Library/Java/JavaVirtualMachines/#{version}",
                         '~/Library/Application Support/Java',
                         '/Library/Application Support/Oracle/Java',
                         '~/Library/Application Support/Oracle/Java',
                         '~/Library/Application Support/JREInstaller',
                         "/Library/Java/JavaVirtualMachines/#{version}",
                       ]
end
