cask 'key-codes' do
  version '2.0.3'
  sha256 '64de01480194eb0ee29402cdfa29ada9d4002cef828ad008127412945fb84b4f'

  url 'http://manytricks.com/download/keycodes'
  appcast 'https://manytricks.com/keycodes/appcast.xml',
          checkpoint: '4ce0a9a5c1a0137b2779eee1d91c3e83ae412d47cf4fcfadf767e44810723db3'
  name 'Key Codes'
  homepage 'https://manytricks.com/keycodes/'
  license :gratis

  auto_updates true

  app 'Key Codes.app'
end
