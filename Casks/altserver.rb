cask 'altserver' do
  version '1.3'
  sha256 'c83d5076435d88260ae99674776274bb3f23aa6dc54e717ad65a0c26c66f88f4'

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
