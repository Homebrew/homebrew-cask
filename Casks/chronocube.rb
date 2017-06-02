cask 'chronocube' do
  version '0.5.1'
  sha256 '98fce0d7bbcbdc4e475274076469d2cdfaf3d8101d6cf63f56797bc3b0a8c75b'

  # github.com/pablopunk/chronocube was verified as official when first introduced to the cask
  url "https://github.com/pablopunk/chronocube/releases/download/v#{version}/Chronocube-Mac.dmg"
  appcast 'https://github.com/pablopunk/chronocube/releases.atom',
          checkpoint: '62e9382b48906ab7df517d11e00cd4b61054b5fd05a8ee413335e6c98fa008c6'
  name 'Chronocube'
  homepage 'http://chronocube.live/'

  app 'Chronocube.app'
end
