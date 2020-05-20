cask 'altserver' do
  version '1.3.1'
  sha256 '40ac78739c0a24bbc8b8da0694c0197c73fc31872a92903391f558ec195048b5'

  # f000.backblazeb2.com/file/ was verified as official when first introduced to the cask
  url "https://f000.backblazeb2.com/file/altstore/altserver/#{version.dots_to_underscores}.zip"
  appcast 'https://altstore.io/altserver/sparkle-macos.xml'
  name 'AltServer'
  homepage 'https://altstore.io/'

  depends_on macos: '>= :mojave'

  app 'AltServer.app'

  uninstall quit: 'com.rileytestut.AltServer'

  zap trash: [
               '~/Library/Caches/com.rileytestut.AltServer',
               '~/Library/Cookies/com.rileytestut.AltServer.binarycookies',
               '~/Library/Preferences/com.rileytestut.AltServer.plist',
             ]
end
