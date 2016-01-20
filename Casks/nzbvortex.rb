cask 'nzbvortex' do
  version '2.11.10'
  sha256 'dc4280c1bf4925a38e8609ce4c794e9d6a415645b285b085faccc59ddae55f59'

  # cloudfront.net is the official download host per the appcast feed
  url "http://d3qv7p1umdiwb4.cloudfront.net/NZBVortex-#{version}.zip"
  appcast 'http://www.nzbvortex.com/update/appcast.xml',
          checkpoint: '3a90a126c430ed60df9ecf9cc2ae1cc2691bee4ab2c4ed3bafb402d725537416'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app 'NZBVortex 3.app'
end
