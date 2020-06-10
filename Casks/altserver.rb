cask 'altserver' do
  version '1.3.2'
  sha256 '7c1db4387a700f389d173a8cf56d385673419b4c2227e1de4251101c5f14f153'

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
