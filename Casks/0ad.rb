cask '0ad' do
  version '0.0.19-alpha'
  sha256 '83f75a2702daec6195bea7a2c705aa2929fcd1b0b0507afc59d0ecfa15301ba9'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  name '0 A.D.'
  homepage 'http://www.play0ad.com/'
  license :oss

  app '0ad.app'
end
