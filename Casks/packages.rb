cask 'packages' do
  version '1.2.6'
  sha256 'a24225be6981228f16f17140af2af91c0d27cac82c879de98e6ca788a4591f18'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  auto_updates true

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
