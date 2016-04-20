cask 'cookie' do
  version '5.0.5'
  sha256 '299b95d3f221e152ce37f084870f1ccba5141c965231f4083902497f62d50ed2'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.dmg'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: '3e0dc0186accd4a6d8ffd9b1a871d6121627c893850cfeb55a340e7d112f177f'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
