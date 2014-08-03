class Java < Cask
  version '1.8.0_20'
  sha256 'babc5e77c693dbdb70bcf45df267bede1b3f6c1539b1417dbd9dce86d0e159bd'

  url 'http://download.java.net/jdk8u20/archive/b22/binaries/jdk-8u20-ea-bin-b22-macosx-x86_64-08_jul_2014.dmg?q=download/jdk8u20/archive/b22/binaries/jdk-8u20-ea-bin-b22-macosx-x86_64-08_jul_2014.dmg',
      :cookies => {
                    'oraclelicense' => 'accept-securebackup-cookie'
                  }
  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html'

  install 'JDK 8 Update 11.pkg'
  after_install do
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
                         'com.oracle.jdk8u11',         # manually update this for each version
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
            :files => [
                       '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin',
                       "/Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents",
                       '/Library/PreferencePanes/JavaControlPanel.prefPane',
                       '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK',
                       '/Library/Java/Home',
                       '/usr/lib/java/libjdns_sd.jnilib',
                      ]
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
