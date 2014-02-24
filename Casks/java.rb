class Java < Cask
  url 'http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-macosx-x64.dmg',
  :cookies => { 's_nr' => '1388004420389',
    's_cc' => 'true',
    'gpw_e24' => 'http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk7-downloads-1880260.html',
    's_sq' => '%5B%5BB%5D%5D' }
  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html'
  version '1.7.0_51'
  sha256 '1312b0553bd37a232114637f05b036a6fd5d444e653adef7230ba141328f7734'
  install 'JDK 7 Update 51.pkg'
  after_install do
    system "sudo /usr/libexec/PlistBuddy -c \"Add :JavaVM:JVMCapabilities: string BundledApp\" /Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system "sudo /usr/libexec/PlistBuddy -c \"Add :JavaVM:JVMCapabilities: string JNI\" /Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system "sudo /usr/libexec/PlistBuddy -c \"Add :JavaVM:JVMCapabilities: string WebStart\" /Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system "sudo /usr/libexec/PlistBuddy -c \"Add :JavaVM:JVMCapabilities: string Applets\" /Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents/Info.plist"
    system "sudo rm -r /System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK 2> /dev/null"
    system "sudo ln -s /Library/Java/JavaVirtualMachines/jdk#{version}.jdk/Contents /System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK"
  end
  uninstall :pkgutil => 'com.oracle.jdk7u51',
            :files => '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
  caveats <<-EOS.undent
    This Cask makes minor modifications to the JRE to prevent any packaged
    application issues.

    If your Java application still asks for JRE installation, you might need to
    reboot or logout/login.

    The JRE packaging bug is discussed here:
    https://bugs.eclipse.org/bugs/show_bug.cgi?id=411361
    EOS
end
