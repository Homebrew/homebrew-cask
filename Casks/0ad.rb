cask '0ad' do
  version '0.0.21-alpha'
  sha256 '4f616798252e4c814262e25b7d7e714619a6f0897c8a44a6a128766901d8b25d'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast 'https://play0ad.com/download/mac/',
          checkpoint: '97895f114e670a52aee9a81f6fd55af5f0fe54aff60f9f6dd3b847f446f0a90b'
  name '0 A.D.'
  homepage 'https://play0ad.com/'

  app '0 A.D..app'
end
