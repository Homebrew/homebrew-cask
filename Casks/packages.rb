cask 'packages' do
  version '1.2.6'
  sha256 'fcaa90e25ef2325c81f5e01be40916864fadc5d70e651bec3e341ec54d0a50d6'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  auto_updates true

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
