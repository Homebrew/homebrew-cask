cask :v1 => 'key-codes' do
  version '2.0.1'
  sha256 '1b7b4de0d15dfd483811b913821b722afab181cad031a5d0c1172e981a0dc6bd'

  url 'http://manytricks.com/download/keycodes'
  appcast 'http://manytricks.com/keycodes/appcast.xml'
  name 'Key Codes'
  homepage 'http://manytricks.com/keycodes/'
  license :gratis

  app 'Key Codes.app'
end
