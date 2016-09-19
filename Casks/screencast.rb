cask 'screencast' do
  version '0.0.4'
  sha256 'ce662e83464e94495f782e5656d3a541b7dd4095eb400622e0e7e0cc04ecae7d'

  url "https://github.com/soh335/Screencast/releases/download/#{version}/Screencast.dmg"
  appcast 'https://raw.githubusercontent.com/soh335/Screencast/master/appcast.xml',
          checkpoint: 'cfbce27e2809dfc24831d2976fef1c9b9ce0da37876cc16ba5e0e62269d97254'
  name 'Screencast'
  homepage 'https://github.com/soh335/Screencast'
  license :closed

  app 'Screencast.app'
end
