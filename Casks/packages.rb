cask 'packages' do
  version '1.2.5'
  sha256 '44682aff97b6c9b4a87ede9ade95fa3b3ec9b44affb6bbb6f5ea016df72a3dde'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
