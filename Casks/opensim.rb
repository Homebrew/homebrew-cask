cask 'opensim' do
  version '0.4.0'
  sha256 '12a5305a3cb199240c5f7200bbdf2e8866b7ae822f6d45aba642b77b46313b87'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
