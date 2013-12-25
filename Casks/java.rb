class Java < Cask
  url 'http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-macosx-x64.dmg',
      :cookies => { 's_nr' => '1388004420389',
                    's_cc' => 'true',
                    'gpw_e24' => 'http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk7-downloads-1880260.html',
                    's_sq' => '%5B%5BB%5D%5D' }
  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html'
  version '1.7.0_45'
  sha1 'aa1bbf29decda9a6877f0279510cd50eabba68c1'
  install 'JDK 7 Update 45.pkg'
  uninstall :files => '/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/'
end
