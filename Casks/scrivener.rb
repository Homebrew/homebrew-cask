cask 'scrivener' do
  version '3.0-75'
  sha256 '3cd33159b2d03a1e5b60a44f6d9e1ae5847c01fd5e9bc31c99e224b9d0b98950'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '9e63b07d3337a6bb1366d0b04adb569ffb6e3826b72bf07caf52d6fc183a4c37'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
