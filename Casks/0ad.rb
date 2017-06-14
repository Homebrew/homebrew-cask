cask '0ad' do
  version '0.0.21-alpha'
  sha256 '4f616798252e4c814262e25b7d7e714619a6f0897c8a44a6a128766901d8b25d'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast 'https://play0ad.com/download/mac/',
          checkpoint: '7929cb7bfe3b37c3bb861397c4ae350c3d9d21067bad664d3729d2dac7049a67'
  name '0 A.D.'
  homepage 'https://play0ad.com/'

  app '0 A.D..app'
end
