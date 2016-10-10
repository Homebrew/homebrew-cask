cask 'key-codes' do
  version '2.1'
  sha256 '60ec4c0cef5e97943c91e4ed317434bcaddd4cdbce93368d8bca9db9d45c60e2'

  url 'https://manytricks.com/download/keycodes'
  appcast 'https://manytricks.com/keycodes/appcast.xml',
          checkpoint: 'c83453117309b3ee87694a729ce8ff72bb2d862fd33054fa8916af01e1a0adaa'
  name 'Key Codes'
  homepage 'https://manytricks.com/keycodes/'

  auto_updates true

  app 'Key Codes.app'
end
