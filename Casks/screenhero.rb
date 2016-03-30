cask 'screenhero' do
  version '2.3.6.0'
  sha256 'b89302e56554f79cb342e54273df99d2319638dc2e1fb68c6772a05eaed8d2dd'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: '971582489e19086e79213cf7ef32dd9b2f5da8e1fa24c31d9dda71558226ba4e'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
