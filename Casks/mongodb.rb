cask :v1 => 'mongodb' do
  version '3.0.5-build.1'
  sha256 'd3df85e7045a3446090b910eee1caa3b705f6e73c0b8c10b53753d80c6f60e01'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom'
  name 'MongoDB'
  homepage 'http://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap :delete => [
                  '~/Library/Caches/io.blimp.MongoDB',
                  '~/Library/Preferences/io.blimp.MongoDB.plist'
                 ]
end
