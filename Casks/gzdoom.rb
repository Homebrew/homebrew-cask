cask 'gzdoom' do
  version '0.6.0'
  sha256 '4a64aeeb831dd7a5d919d8ccd3a17b051ebd456b043c034c77329beb3863c482'

  # github.com/alexey-lysiuk was verified as official when first introduced to the cask
  url "https://github.com/alexey-lysiuk/gzdoom/releases/download/macOS-#{version}/GZDoom-macOS-#{version}.dmg"
  appcast 'https://github.com/alexey-lysiuk/gzdoom/releases.atom',
          checkpoint: 'fdf284e4bc993f222b95f4a8efbd114bb37b4b4423287de8a165941b8386d137'
  name 'gzdoom'
  homepage 'https://alexey-lysiuk.github.io/gzdoom/'

  app 'GZDoom.app'
end
