cask 'cactus' do
  version '1.1.22'
  sha256 'af920f5f180b64731adef561a45213064c27830f5d9030d6a862f339ffc4e88c'

  # update.cactusformac.com was verified as official when first introduced to the cask
  url "https://update.cactusformac.com/static/downloads/Cactus-#{version}.zip"
  appcast 'https://s3.amazonaws.com/update.cactusformac.com/appcast.xml'
  name 'Cactus'
  homepage 'https://web.archive.org/web/20160801163004/cactusformac.com/'

  app 'Cactus.app'

  zap trash: [
               '~/Library/Caches/com.nektar.Cactus',
               '~/Library/Preferences/com.nektar.Cactus.LSSharedFileList.plist',
               '~/Library/Preferences/com.nektar.Cactus.plist',
             ]
end
