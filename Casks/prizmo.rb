cask 'prizmo' do
  version '3.1.11'
  sha256 'f031029ca65cb02b87db18ae02517df4bb80108a39181f5dee94b4a7687611ac'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast 'https://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: '7c791245da47c68259dd99f9fe0cd5962d51b5e1aa042b948f5090f8ec17520e'
  name 'Prizmo'
  homepage 'https://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
