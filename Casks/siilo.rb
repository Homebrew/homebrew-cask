cask 'siilo' do
  version '0.3.2'
  sha256 '848f87c8cca1704080ee165174b9362e117a0926c25b29f00f23bdeca4897f75'

  url "http://siiloapp.com/releases/siilo-#{version}.zip"
  name 'Siilo'
  homepage 'http://siiloapp.com/'

  app 'Siilo.app'

  uninstall quit: 'com.mv.siilo'

  zap trash: [
               '~/Library/Caches/com.mv.siilo',
               '~/Library/Preferences/com.mv.siilo.plist',
             ]
end
