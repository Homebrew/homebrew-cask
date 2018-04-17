cask 'packages' do
  version '1.2.3'
  sha256 '77e88cf1b02cee232ece0c24c61e30da20274f3c0e1a6107d06030dd126d677c'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist',
          checkpoint: '0772895503a22999c1adafe6eb24c4b78de1dd80c943401b492a2a16e97cbd45'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
