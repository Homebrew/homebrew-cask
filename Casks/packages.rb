cask :v1 => 'packages' do
  version '1.1.2'
  sha256 '8fa1aff087b5f82cbbec557a01a65998c4ca244925f778e559038fc82d9ab23d'

  url 'http://s.sudre.free.fr/Software/files/Packages.dmg'
  homepage 'http://s.sudre.free.fr/Software/Packages/about.html'
  license :bsd

  pkg 'packages/Packages.pkg'

  uninstall :script => 'Extras/uninstall.sh'
end
