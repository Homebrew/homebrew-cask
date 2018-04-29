cask 'dbeaver-community' do
  version '5.0.4'
  sha256 '3af32d6ef9ba235b5d3a978582ead22e59f770fdcefaebe9121b2d34399b1955'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '6ac90b9af1926450f8b5669d2268e03e3aafb42dbb707ca0e415ff3375473720'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
