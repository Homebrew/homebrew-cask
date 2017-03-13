cask 'meteorologist' do
  version '3.0.1'
  sha256 '78231273857e15c772c0958e8dd9cb98af94a75c2718a2fc187dd1b3e77e3cb8'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '76eb0d439df1b336a0cc02cd24c073693e302fb321cfd3e874bc2727ff2fcfde'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
