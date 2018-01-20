cask 'swinsian' do
  version '2.0.2'
  sha256 '4143bdb2423e5171673fb01572040a93d1e6d4d655f5aae9cb37042a16285d50'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '92d051c48dad618ed88db439e8feb17f000014989d785fde1e515eaa6761cc98'
  name 'Swinsian'
  homepage 'https://swinsian.com/'

  app 'Swinsian.app'
end
