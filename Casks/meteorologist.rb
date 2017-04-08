cask 'meteorologist' do
  version '3.0.2'
  sha256 '76c4c4871be9a3219688837367c3968dda20cee87157357833e004acb9ccc3fd'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '750864241f71e84badf3085b0a64dabaec65015573250d1e99a282b80826c74f'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
