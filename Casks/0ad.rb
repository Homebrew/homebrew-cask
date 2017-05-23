cask '0ad' do
  version '0.0.21-alpha'
  sha256 '4f616798252e4c814262e25b7d7e714619a6f0897c8a44a6a128766901d8b25d'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast 'https://play0ad.com/download/mac/',
          checkpoint: 'f79d0c015cf663ad3a72ca1f6e2b9512c4c0402887670d31c80450e12aec6bf0'
  name '0 A.D.'
  homepage 'https://play0ad.com/'

  app '0 A.D..app'
end
