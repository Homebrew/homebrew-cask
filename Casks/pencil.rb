cask 'pencil' do
  version '3.0.4'
  sha256 '3ca99c293be804067c95db77a7248531ede321d0c9a436bac0a34c57a192088f'

  url "https://pencil.evolus.vn/dl/V#{version}/Pencil-#{version}.dmg"
  appcast 'https://github.com/evolus/pencil/releases.atom'
  name 'Pencil'
  homepage 'https://pencil.evolus.vn/'

  app 'Pencil.app'
end
