cask 'packages' do
  version '1.2.8'
  sha256 '8fdbd3355ac4b347b3097261e2ec0c4076486229051e80169f3ede0ca50cfa51'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  auto_updates true

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
