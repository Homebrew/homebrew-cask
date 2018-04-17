cask 'padlock' do
  version '2.6.2'
  sha256 '95627f911298ceea84da35e6c17d12d97fcf17a1970edd062cd912ac3d59d026'

  # github.com/MaKleSoft/padlock was verified as official when first introduced to the cask
  url "https://github.com/MaKleSoft/padlock/releases/download/v#{version}/Padlock-#{version}.dmg"
  appcast 'https://github.com/MaKleSoft/padlock/releases.atom',
          checkpoint: '2fd8816baa2d588f5809d17185af186008fb6d3fa38bedf2be7365ffaae0b2ff'
  name 'Padlock'
  homepage 'https://padlock.io/'

  app 'Padlock.app'
end
