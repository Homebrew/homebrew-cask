cask 'opensim' do
  version '0.3.0'
  sha256 '6f2baf5bd6af07cf922a609b1836ef613c720417f1f996d591daafdd6c81a11d'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
