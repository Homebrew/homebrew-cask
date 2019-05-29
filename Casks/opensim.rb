cask 'opensim' do
  version '0.4.2'
  sha256 'ef86b5fec6fde94adfd8d35c7f72ba8549ebd18f200169e9ed1bcc67aedfeae1'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
