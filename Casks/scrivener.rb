cask 'scrivener' do
  version '2.8'
  sha256 '752a689ca500a9b5ec8192790fd747671896e4f3ca4c8e14cc0b9943726cc36a'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '79e3d31dd436e68082f47d8d3690967b250f6f810eca34b4e057f3255003cdde'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  app 'Scrivener.app'
end
