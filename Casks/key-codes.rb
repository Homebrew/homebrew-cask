cask 'key-codes' do
  version '2.0.1'
  sha256 '1b7b4de0d15dfd483811b913821b722afab181cad031a5d0c1172e981a0dc6bd'

  url 'http://manytricks.com/download/keycodes'
  appcast 'https://manytricks.com/keycodes/appcast.xml',
          :sha256 => '8d887901c2bfd31cfe644b0c2cce15b153decffc96199fd6f41080de5ae13f16'
  name 'Key Codes'
  homepage 'https://manytricks.com/keycodes/'
  license :gratis

  app 'Key Codes.app'
end
