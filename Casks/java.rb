cask 'java' do
  version '9.0.1,11'
  sha256 'e87f9c83045f68546e78ee24a61724d06180581b0712ffdcdcac8faf6a3eca56'

  url "http://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Standard Edition Development Kit'
  homepage "https://www.oracle.com/technetwork/java/javase/downloads/jdk#{version.major}-downloads-3848520.html"

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
    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true

    if MacOS.version <= :mavericks
      system_command '/bin/rm',
                     args: ['-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
      system_command '/bin/ln',
                     args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
    end
  end

  uninstall_preflight do
    if File.exist?("#{HOMEBREW_PREFIX}/Caskroom/java-jdk-javadoc")
      system_command 'brew', args: ['cask', 'uninstall', 'java-jdk-javadoc']
    end
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
                         if MacOS.version <= :mavericks
                           [
                             '/usr/lib/java/libjdns_sd.jnilib',
                             '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK',
                           ]
                         end,
                       ].keep_if { |v| !v.nil? }

  zap delete: [
                '~/Library/Caches/com.oracle.java.Java-Updater',
                '~/Library/Caches/Oracle.MacJREInstaller',
                '~/Library/Caches/net.java.openjdk.cmd',
              ],
      trash:  [
                '/Library/Application Support/Oracle/Java',
                '/Library/Preferences/com.oracle.java.Deployment.plist',
                '/Library/Preferences/com.oracle.java.Helper-Tool.plist',
                '~/Library/Application Support/Java/',
                '~/Library/Application Support/Oracle/Java',
                '~/Library/Preferences/com.oracle.java.Java-Updater.plist',
                '~/Library/Preferences/com.oracle.java.JavaAppletPlugin.plist',
                '~/Library/Preferences/com.oracle.javadeployment.plist',
              ],
      rmdir:  [
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
