cask 'key-codes' do
  version '2.0.1'
  sha256 '1b7b4de0d15dfd483811b913821b722afab181cad031a5d0c1172e981a0dc6bd'

  url 'http://manytricks.com/download/keycodes'
  appcast 'https://manytricks.com/keycodes/appcast.xml',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Key Codes'
  homepage 'https://manytricks.com/keycodes/'
  license :gratis

  app 'Key Codes.app'
end
