cask 'polymail' do
  version '0.90'
  sha256 'e38bec4a139e6923117025107ba14416fcd0868b4168feb3216cad8ebe5e0468'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '863b7c85116dcdad1d8517c2e85fd7df907c9e21a93c49dbc5b480088ea49c4b'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
