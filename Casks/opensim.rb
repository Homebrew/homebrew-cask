cask 'opensim' do
  version '0.4.1'
  sha256 '64660977c64940be0c541eb0457c5c9c467ec7a75914f64462969b4d9bc9ed94'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
