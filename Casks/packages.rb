cask 'packages' do
  version :latest
  sha256 :no_check

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  name 'Packages'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'

  pkg 'packages/Packages.pkg'

  uninstall script: 'Extras/uninstall.sh'
end
