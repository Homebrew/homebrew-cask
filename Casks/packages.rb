cask 'packages' do
  version '1.2.7'
  sha256 '7775fcc5ff38ae2ea2257278f5ed0a43e2580278d3626ed9fee5d827ebee36b4'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  auto_updates true

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
