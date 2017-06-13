cask 'opensim' do
  version '0.2.0'
  sha256 '8bd0c409c3cc2441203891c3ed65913359e929367da0f7a1ae4989c66757a6a6'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom',
          checkpoint: 'd98351f98af4871a937a82f09b8af555c1adc890a1760ab835a6541983c0cc84'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
