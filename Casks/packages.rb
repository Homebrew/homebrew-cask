cask 'packages' do
  version '1.2.4'
  sha256 '5a3f28eac0afb5f17c04c352a8d9b14b1497fa8df7d975971c2446f99a5bfe2f'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
