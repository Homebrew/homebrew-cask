cask :v1 => 'java-beta' do
  version '1.8.0_60_b19'
  sha256 '90b498e09ecac7592ba79f245e4bb9cbb1a9e9906e8204d2bce3a86c51ffc02a'

  url "http://download.java.net/jdk8u60/archive/b19/binaries/jdk-#{version.split(/_/)[0].split(/\./)[1]}u#{version.split(/_/)[1]}-ea-bin-#{version.split(/_/)[2]}-macosx-x86_64-09_jun_2015.dmg",
      :cookies => {
                    'oraclelicense' => 'accept-securebackup-cookie'
                  }
  name 'Java'
  name 'Java Standard Edition Development Kit'
  homepage 'https://jdk8.java.net/'
  license :gratis

  pkg "JDK #{version.split(/_/)[0].split(/\./)[1]} Update #{version.split(/_/)[1]}.pkg"
  postflight do
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string JNI',        "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string WebStart',   "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/usr/libexec/PlistBuddy', '-c', 'Add :JavaVM:JVMCapabilities: string Applets',    "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Info.plist"
    system '/usr/bin/sudo', '-E', '--',
      '/bin/rm', '-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    system '/usr/bin/sudo', '-E', '--',
      '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
    system '/usr/bin/sudo', '-E', '--',
      '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Home", '/Library/Java/Home'
    system '/usr/bin/sudo', '-E', '--',
      '/bin/mkdir', '-p', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Home/bundle/Libraries"
    system '/usr/bin/sudo', '-E', '--',
      '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Home/jre/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk#{version.sub(/b/,"")}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"
  end

  uninstall :pkgutil => [
                         "com.oracle.jdk#{version.split(/_/)[0].split(/\./)[1]}u#{version.split(/_/)[1]}",
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
    License Agreement for Java SE EA at

      http://www.oracle.com/technetwork/licenses/ea-license-152003.html
  EOS
end

