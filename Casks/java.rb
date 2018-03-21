cask 'java' do
  version '10,46:76eac37278c24557a3c4199677f19b62'
  sha256 'df64b0d6c24e6a6006820b0073747e1c79ace714063f515cdcfb825b73558851'

  url "http://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Standard Edition Development Kit'
  homepage "https://www.oracle.com/technetwork/java/javase/downloads/jdk#{version.major}-downloads-4416644.html"

  depends_on macos: '>= :yosemite'

  pkg "JDK #{version.before_comma}.pkg"

  postflight do
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string WebStart', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string Applets', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/MacOS", '/Library/Java/MacOS'],
                   sudo: true
    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall pkgutil:   [
                         "com.oracle.jdk-#{version.before_comma}",
                         'com.oracle.jre',
                       ],
            launchctl: [
                         'com.oracle.java.Helper-Tool',
                         'com.oracle.java.Java-Updater',
                       ],
            quit:      [
                         'com.oracle.java.Java-Updater',
                         'net.java.openjdk.cmd', # Java Control Panel
                       ],
            delete:    [
                         '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin',
                         "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents",
                         '/Library/PreferencePanes/JavaControlPanel.prefPane',
                         '/Library/Java/Home',
                         '/Library/Java/MacOS',
                       ]

  zap trash: [
               '/Library/Application Support/Oracle/Java',
               '/Library/Preferences/com.oracle.java.Deployment.plist',
               '/Library/Preferences/com.oracle.java.Helper-Tool.plist',
               '~/Library/Application Support/Java/',
               '~/Library/Application Support/Oracle/Java',
               '~/Library/Caches/com.oracle.java.Java-Updater',
               '~/Library/Caches/Oracle.MacJREInstaller',
               '~/Library/Caches/net.java.openjdk.cmd',
               '~/Library/Preferences/com.oracle.java.Java-Updater.plist',
               '~/Library/Preferences/com.oracle.java.JavaAppletPlugin.plist',
               '~/Library/Preferences/com.oracle.javadeployment.plist',
             ],
      rmdir: [
               '/Library/Application Support/Oracle/',
               "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk",
               '~/Library/Application Support/Oracle/',
             ]

  caveats <<~EOS
    This Cask makes minor modifications to the JRE to prevent issues with
    packaged applications, as discussed here:

      https://bugs.eclipse.org/bugs/show_bug.cgi?id=411361

    If your Java application still asks for JRE installation, you might need
    to reboot or logout/login.

    Installing this Cask means you have AGREED to the Oracle Binary Code
    License Agreement for Java SE at

      https://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
