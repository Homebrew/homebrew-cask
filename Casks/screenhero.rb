cask 'screenhero' do
  version '2.3.4.0'
  sha256 '6f9e5efae3b37fb34488e3a817b9e0ad7613401332e45bec86e1c5068f4aef4d'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: '06562363da8ceb90c9dd977171c836330c88372d06927b6940fe59264f37d87f'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
