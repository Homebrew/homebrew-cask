cask 'hirundo' do
  version '0.8.2'
  sha256 '4665a3de5bdc32cc20bf05e214443fc262637730c2a53be974b9686e4eff2d45'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  appcast 'https://stylemac.com/hirundo/versions/current.json',
          checkpoint: '2fa5a694821f63d7451af4fe2d06153a91816260da924d2c126e430c712fa027'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'
  license :gratis

  app 'Hirundo.app'
end
