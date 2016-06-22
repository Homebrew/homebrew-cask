cask 'rodeo' do
  version '2.0.2'
  sha256 '26bda274e10111db1ca60995552dd3f955de49dcc2c3907a1033c7ac34286df3'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '83e57ee8349297372a8315a725b8782734863e8a92a05ac10ac0e9fc66e3807c'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end
