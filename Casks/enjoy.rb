cask :v1 => 'enjoy' do
  version '1.2.1'
  sha256 '95f37aae546392697a55c3e72add68dadff67663ceba0b9f86815c867cc9e85d'

  url "https://s3.amazonaws.com/nongraphical/releases/Enjoy2-#{version}.zip"
  appcast 'https://s3.amazonaws.com/nongraphical/enjoy2/Enjoy2Appcast.xml'
  name 'Enjoy2'
  homepage 'https://github.com/fyhuang/enjoy2/'
  license :mit

  app 'Enjoy2.app'
end
