cask :v1 => 'java' do
  version '1.8.0_25'
  sha256 '65b18e9a081435d06c18ba8d9b19e6eb23c902204f5ac3a9f029ec5b3fe2d2a6'

  url 'http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-macosx-x64.dmg',
      :cookies => {
                    'oraclelicense' => 'accept-securebackup-cookie'
                  }
  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html'
  license :gratis

  pkg 'JDK 8 Update 25.pkg'
  postflight do
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string JNI',        "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string WebStart',   "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string Applets',    "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/bin/rm', '-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    system '/usr/bin/sudo', '-E', '--',
      '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    system '/usr/bin/sudo', '-E', '--',
      '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Home", '/Library/Java/Home'
    system '/usr/bin/sudo', '-E', '--',
      '/bin/mkdir', '-p', '--', "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Home/bundle/Libraries"
    system '/usr/bin/sudo', '-E', '--',
      '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Home/jre/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"
  end
  uninstall :pkgutil => [
                         'com.oracle.jdk8u25',         # manually update this for each version
                         'com.oracle.jre',
                        ],
            :launchctl => [
                           'com.oracle.java.Helper-Tool',
                           'com.oracle.java.Java-Updater',
                          ],
            :quit => [
                      'com.oracle.java.Java-Updater',
                      'net.java.openjdk.cmd',         # Java Control Panel
                     ],
            :delete => [
                        '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin',
                        "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents",
                        '/Library/PreferencePanes/JavaControlPanel.prefPane',
                        '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK',
                        '/Library/Java/Home',
                        '/usr/lib/java/libjdns_sd.jnilib',
                       ]
  zap       :delete => [
                        '~/Library/Application Support/Oracle/Java',
                        '~/Library/Caches/com.oracle.java.Java-Updater',
                        '~/Library/Caches/net.java.openjdk.cmd',
                       ],
            :rmdir  => '~/Library/Application Support/Oracle/'

  caveats <<-EOS.undent
    This Cask makes minor modifications to the JRE to prevent issues with
    packaged applications, as discussed here:

      https://bugs.eclipse.org/bugs/show_bug.cgi?id=411361

    If your Java application still asks for JRE installation, you might need
    to reboot or logout/login.

    Installing this Cask means you have AGREED to the Oracle Binary Code
    License Agreement for Java SE at

      http://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
