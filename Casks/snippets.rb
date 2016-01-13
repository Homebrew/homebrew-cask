cask 'snippets' do
  version '0.8.2'
  sha256 '32167664dacd3301dd89e618093c3ce7a7dcd0204061d34f7759bad3c9a7cc78'

  url 'http://snippets.me/download/mac/Snippets-468.zip'
  appcast 'https://snippets.me/mac/appcast.xml',
          :sha256 => '4132cda0889035ab9ea5146d7b1c5a475d15ff0caeb7588384e7f526d4b6ddb1'
  name 'Snippets'
  homepage 'http://snippets.me/'
  license :gratis

  app 'Snippets.app'
end
