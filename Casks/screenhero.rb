cask 'screenhero' do
  version '2.3.7.0'
  sha256 '7f642ca6294c136192d4afbc52bf95f843b4c10749b2ee6dc39cf871c49f125a'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: 'deae936563576f81f73b4ab3e74b3843a71dd5cdf50b8540632ea2520c1263b7'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
