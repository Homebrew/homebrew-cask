cask '0ad' do
  version '0.0.22-alpha'
  sha256 '5876856a8641ffe736fc39f9f6472d7e1699c49a3154e35e713a382abc840caa'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast 'https://play0ad.com/download/mac/',
          checkpoint: 'd0522e342051ad0fe14820172702c1db0c24cd8aa43e848458ad453274f7374e'
  name '0 A.D.'
  homepage 'https://play0ad.com/'

  app '0 A.D..app'
end
