cask 'packages' do
  version '1.2.1'
  sha256 'cf98848b287e6bda61d4692c5876370db951a83944e2cf8c1cf96adc0ad1ffde'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist',
          checkpoint: '685d6dc4ba3f9cf6ec6e65be5c4a5a500e1e13e219193362bcbc5f8e4927e830'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
