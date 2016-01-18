cask 'snippets' do
  version '0.8.2'
  sha256 '32167664dacd3301dd89e618093c3ce7a7dcd0204061d34f7759bad3c9a7cc78'

  url 'http://snippets.me/download/mac/Snippets-468.zip'
  appcast 'https://snippets.me/mac/appcast.xml',
          checkpoint: 'b67b5cd59bfee4398a81f157dec126b982f120f757ec24a4ea1396f459ed19d0'
  name 'Snippets'
  homepage 'http://snippets.me/'
  license :gratis

  app 'Snippets.app'
end
