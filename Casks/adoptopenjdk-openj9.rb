cask 'adoptopenjdk-openj9' do
  version '11.0.1,13'
  sha256 'c5e9b588b4ac5b0bd5b4edd69d59265d1199bb98af7ca3270e119b264ffb6e3f'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK11-jdk_x64_mac_openj9_#{version.before_comma}_#{version.after_comma}.tar.gz"
  appcast 'https://github.com/adoptopenjdk/openjdk11-binaries/releases.atom'
  name 'AdoptOpenJDK with OpenJ9'
  homepage 'https://adoptopenjdk.net/'

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "#{staged_path}/jdk-#{version.before_comma}+#{version.after_comma}",
                          "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk"],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Home/lib/server/libjvm.dylib",
                          "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :CFBundleGetInfoString AdoptOpenJDK #{version.before_comma}+#{version.after_comma}", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :CFBundleIdentifier net.adoptopenjdk.#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :CFBundleName AdoptOpenJDK #{version.before_comma} with OpenJ9", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :JavaVM:JVMPlatformVersion #{version.before_comma}.#{version.after_comma}", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Set :JavaVM:JVMVendor AdoptOpenJDK', "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk/Contents/Info.plist"],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}-openj9.jdk"
end
