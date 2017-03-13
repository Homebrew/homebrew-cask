cask 'meteorologist' do
  version '3.0.1'
  sha256 '6db9be88efa1da5f665998becf8e9c0e2d0998d4ff75d44bebf16a4cb6ed0670'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '76eb0d439df1b336a0cc02cd24c073693e302fb321cfd3e874bc2727ff2fcfde'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
