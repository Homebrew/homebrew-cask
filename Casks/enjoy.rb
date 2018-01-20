cask 'enjoy' do
  version '1.2.1'
  sha256 '95f37aae546392697a55c3e72add68dadff67663ceba0b9f86815c867cc9e85d'

  # amazonaws.com/nongraphical was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nongraphical/releases/Enjoy2-#{version}.zip"
  appcast 'https://s3.amazonaws.com/nongraphical/enjoy2/Enjoy2Appcast.xml',
          checkpoint: 'cf19c8a0dc17a555a5dc370bc77e8eafd5f3adfb5aeb33406e06fc8e638e0984'
  name 'Enjoy2'
  homepage 'https://github.com/fyhuang/enjoy2/'

  app 'Enjoy2.app'

  zap trash: [
               '~/Library/Application Support/Enjoy2',
               '~/Library/Preferences/net.tunah.Enjoy2.plist',
               '~/Library/Saved Application State/net.tunah.Enjoy2.savedState',
             ]
end
