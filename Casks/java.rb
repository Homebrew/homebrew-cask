class Java < Cask
  url 'http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-macosx-x64.dmg',
  :cookies => { 's_nr' => '1388004420389',
    's_cc' => 'true',
    'gpw_e24' => 'http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk7-downloads-1880260.html',
    's_sq' => '%5B%5BB%5D%5D' }
  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html'
  version '1.7.0_51'
  sha1 'd53f71dfb7f24b6c0fc470a17fa0cac3ee304194'
  install 'JDK 7 Update 51.pkg'
  uninstall :pkgutil => 'com.oracle.jdk7u51'
  caveats <<-EOS.undent
    If your Java application still asks for JRE installation, you need to run:
    sudo sed -i \'\' 's/\\<string\\>CommandLine\\<\\/string\\>/\\<string\\>CommandLine\\<\\/string\\>\\<string\\>JNI\\<\\/string\\>\\<string\\>BundledApp\\<\\/string\\>\\<string\\>WebStart\\<\\/string\\>\\<string\\>Applets\\<\\/string\\>/' /Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Info.plist
    You might also need to reboot or Logout/Login
    Above is a workaround for JRE packaging bug discussed here: https://bugs.eclipse.org/bugs/show_bug.cgi?id=411361
    EOS
end
