cask 'cmd-eikana' do
  version '2.0.0'
  sha256 '3d2527476cbb992fb4c9fba7179b4a1bd04686ef3e66dd9c47f816d1145e1fbd'

  url "https://ei-kana.appspot.com/download/eikana-#{version}.app.zip"
  appcast 'https://ei-kana.appspot.com',
          checkpoint: '2c08afc48520059b1f35a49c61abada3b9f8f2d1ac4000e308b3674ebc862c01'
  name 'cmd-eikana'
  name '⌘英かな'
  homepage 'https://ei-kana.appspot.com'
  license :mit

  app '⌘英かな.app'

  zap delete: '~/Library/Preferences/io.github.imasanari.cmd-eikana.plist'
end
