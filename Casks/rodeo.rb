cask 'rodeo' do
  version '2.0.5'
  sha256 'ffb36e53f718ebee50451fe93fa440a84e39692d9f40e3bf1ead6ab9603ddc58'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '83769d9e154d934184378c2426b5adfd1d88205daace94ef57fc8c530afd570c'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end
