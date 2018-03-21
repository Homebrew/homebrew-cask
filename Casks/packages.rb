cask 'packages' do
  version '1.2.2'
  sha256 'bbee49a09e63339600ff5a97dedcecd8a00e4271477f02623e88ce6ebf295288'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  appcast 'http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist',
          checkpoint: '36303735f67c30f292c67cdeed1c4d9ac050547eca212f9ca3cc184f90777181'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
