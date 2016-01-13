cask 'enjoy' do
  version '1.2.1'
  sha256 '95f37aae546392697a55c3e72add68dadff67663ceba0b9f86815c867cc9e85d'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/nongraphical/releases/Enjoy2-#{version}.zip"
  appcast 'https://s3.amazonaws.com/nongraphical/enjoy2/Enjoy2Appcast.xml',
          :checkpoint => '479a07f2b2c1214494329fe566a6abd23b7a8d69b8a54b4edfef09eecf1ba568'
  name 'Enjoy2'
  homepage 'https://github.com/fyhuang/enjoy2/'
  license :mit

  app 'Enjoy2.app'

  zap :delete => [
                   '~/Library/Application Support/Enjoy2',
                   '~/Library/Preferences/net.tunah.Enjoy2.plist',
                   '~/Library/Saved Application State/net.tunah.Enjoy2.savedState',
                 ]
end
