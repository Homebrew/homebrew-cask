cask 'clean-me' do
  version '1.1.1'
  sha256 '3848677b4d43bbcae781127011fddeba54ef6781473e6b0605038bd1a05f2fc7'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom',
          checkpoint: 'a2c182a1428906cc0f8219d35da10bbd28042215db9dec862560d8d769ff2960'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  app 'Clean Me.app'
end
