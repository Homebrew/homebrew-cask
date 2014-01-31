class NetbeansCpp < Cask
  url 'http://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-cpp-macosx.dmg'
  homepage 'https://netbeans.org/'
  version '7.4'
  sha1 '3402eaf501d5158f45c405c6488bbb507f136123'
  install 'NetBeans 7.4.mpkg'
  uninstall(
    :files => '/Applications/NetBeans'
  )
end
