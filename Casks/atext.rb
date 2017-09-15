cask 'atext' do
  version '2.21'
  sha256 '67539d037aee39e56329070cf1d151bdfa79a8d7c0b41897d8af0c468af7d08b'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: '606782e61ba768bd9d3daa26d5d3451d37ea9dabdb6c9b658b95e7a0d186ca03'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
