cask 'handshaker' do
  version '2.0.2'
  sha256 'e45d5cebb66fa9ba2d676203cb161735e3506c757aa9544873b6702d79b361c2'

  url 'https://sf.smartisan.com/sf/release/download'
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: '14d3fb377ea85209d607a6cf78842160810667dbabe58f73ff92b5eca3a665e9'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
