cask 'axoloti' do
  version '1.0.11'
  sha256 'b39b3bd39515cfd79cd788103d863be3c7370ca078cc53ed9a4c325bf6f5292b'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/axoloti/axoloti/releases/download/#{version}/axoloti-mac-#{version}.dmg"
  appcast 'https://github.com/axoloti/axoloti/releases.atom',
          checkpoint: 'b3e7756ec71f418f0a034460136fff898dcd539ff5f44b8a14c13401355eb515'
  name 'Axoloti'
  name 'Axoloti Core'
  homepage 'http://www.axoloti.com/'

  depends_on java: '8'
  depends_on cask: 'axoloti-runtime'

  app 'Axoloti.app'
end
