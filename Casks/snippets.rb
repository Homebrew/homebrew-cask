cask :v1 => 'snippets' do
  version '0.8.2'
  sha256 '32167664dacd3301dd89e618093c3ce7a7dcd0204061d34f7759bad3c9a7cc78'

  url 'https://snippets.me/download/mac/Snippets-468.zip'
  appcast 'http://snippets.me/mac/appcast.xml',
          :sha256 => '4158b1f63ea202992e9ffdcf231e7c21323cc1a0ed52305e69effc0858b902d3'
  homepage 'http://snippets.me/'
  license :unknown    # todo: improve this machine-generated value

  app 'Snippets.app'
end
