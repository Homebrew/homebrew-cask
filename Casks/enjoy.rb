cask :v1 => 'enjoy' do
  version '1.2.1'
  sha256 '95f37aae546392697a55c3e72add68dadff67663ceba0b9f86815c867cc9e85d'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/nongraphical/releases/Enjoy2-#{version}.zip"
  appcast 'https://s3.amazonaws.com/nongraphical/enjoy2/Enjoy2Appcast.xml',
          :sha256 => '69c8ae10d7c6bc87efcb2d6d354ef7c8a073f3b010045043a2c26bd4986d864a'
  name 'Enjoy2'
  homepage 'https://github.com/fyhuang/enjoy2/'
  license :mit

  app 'Enjoy2.app'

  zap :delete => [
                  '~/Library/Application Support/Enjoy2',
                  '~/Library/Preferences/net.tunah.Enjoy2.plist',
                  '~/Library/Saved Application State/net.tunah.Enjoy2.savedState'
                 ]
end
