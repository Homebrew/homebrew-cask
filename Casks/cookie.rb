cask 'cookie' do
  version '5.0.12'
  sha256 '7f37cb887277d9a20573652c71c7b5440db83fe706a51c79795454ff6e867495'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.zip'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: '97b1996885750162ff526c4d1334b86cd24684fef270b730c93dc19549157701'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
