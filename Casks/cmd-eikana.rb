cask 'cmd-eikana' do
  version '1.1.1'
  sha256 'c61f82e1dfd6093272a1f441361c33da79ea29279d4de749dd31d2533d7ab18d'

  url "https://ei-kana.appspot.com/download/eikana-#{version}.app.zip"
  appcast 'https://ei-kana.appspot.com',
          checkpoint: '72ae6ad7ab527ad4713dcca309d1485716a666ff8c2636434a2c17e2102e9092'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://ei-kana.appspot.com'
  license :mit

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
