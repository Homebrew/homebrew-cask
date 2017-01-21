cask 'cerebro' do
  version '0.2.1'
  sha256 '9e624ebfd0f628318fcfd45c5b8f9c299d78de41ccbf57af4e36d9ff3aa91c28'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/Cerebro.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: 'de3e4ede4ee0a1132afe8f32b55843fc67f7de36eeaf9f11b080f75f8a7582d5'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end
