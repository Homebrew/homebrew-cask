cask 'adoptopenjdk' do
  version '11,28'
  sha256 'ca0ec49548c626904061b491cae0a29b9b4b00fb34d8973dc217e10ab21fb0f3'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK11-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.tar.gz"
  appcast 'https://github.com/adoptopenjdk/openjdk11-binaries/releases.atom'
  name 'AdoptOpenJDK'
  homepage 'https://adoptopenjdk.net/'

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "#{staged_path}/jdk-#{version.before_comma}+#{version.after_comma}",
                          "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk"],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib",
                          "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :CFBundleGetInfoString AdoptOpenJDK #{version.before_comma}+#{version.after_comma}", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :CFBundleIdentifier net.adoptopenjdk.#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :CFBundleName AdoptOpenJDK #{version.before_comma}", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Set :JavaVM:JVMPlatformVersion #{version.before_comma}.#{version.after_comma}", "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Set :JavaVM:JVMVendor AdoptOpenJDK', "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk"

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url('https://github.com/AdoptOpenJDK/homebrew-openjdk')}

      brew tap adoptopenjdk/openjdk
  EOS
end
