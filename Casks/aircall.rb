cask 'aircall' do
  version '1.1.2'
  sha256 '7c0afc31019dfaa6867bc47cdc8b84033b0d98a00eadefb19a78868d23e7c5dc'

  url 'http://electron.aircall.io/download/latest/osx'
  name 'Aircall'
  homepage 'https://aircall.io'

  auto_updates true

  app 'Aircall.app'
end
