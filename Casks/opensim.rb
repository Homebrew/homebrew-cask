cask 'opensim' do
  version '0.0.7'
  sha256 '8bd4458a5780b94e43f5e74d40c5c6978285078f87c9f370128399c5fd55ce59'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom',
          checkpoint: '21febc7a97e52de8bb13e75f0e988ca109ae2367bea2bf04a98ba7e48ed3cd12'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
