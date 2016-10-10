cask 'screencast' do
  version '0.0.4'
  sha256 'ce662e83464e94495f782e5656d3a541b7dd4095eb400622e0e7e0cc04ecae7d'

  url "https://github.com/soh335/Screencast/releases/download/#{version}/Screencast.dmg"
  appcast 'https://github.com/soh335/Screencast/releases.atom',
          checkpoint: '888ce555dd77a6e70f588ddf421ec6c5e1f7778be0312dc5f43a9f415ee93e97'
  name 'Screencast'
  homepage 'https://github.com/soh335/Screencast'

  app 'Screencast.app'
end
