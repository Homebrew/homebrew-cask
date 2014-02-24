class NetbeansCpp < Cask
  url 'http://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-cpp-macosx.dmg'
  homepage 'https://netbeans.org/'
  version '7.4'
  sha256 '7819701a2600abdb2ddc7238f0b65f5eb4aa285e883ec9e3b538cb2ad38dc1bd'
  install 'NetBeans 7.4.mpkg'
  uninstall(
    :files => '/Applications/NetBeans'
  )
end
