cask 'rodeo' do
  version '2.1.4'
  sha256 '0b8c5bc936a5308ef930cd5e4fd219c0e1c80e2d5be8e1cf711254f2624a9087'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '0fa49d3199deb4df237bba4452b2adb0a648c027e781efb6a914b8398bc19a58'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end
