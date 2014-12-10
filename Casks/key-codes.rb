cask :v1 => 'key-codes' do
  version '2.0.1'
  sha256 '47d61049953e8fcf881c0c6b9c7060fed2248750f23c26b71b51092384bd5a4a'

  url 'http://manytricks.com/download/keycodes'
  appcast 'http://manytricks.com/keycodes/appcast.xml'
  homepage 'http://manytricks.com/keycodes/'
  license :unknown    # todo: improve this machine-generated value

  app 'Key Codes.app'
end
