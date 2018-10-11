cask 'pext' do
  version '0.19'
  sha256 'ef63e22f17d6f3d88dd94d654bc2ccf30b1699029823818e9384b28c4956ab6b'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
