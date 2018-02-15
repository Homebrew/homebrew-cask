cask 'bbedit' do
  version '12.1.1'
  sha256 '098bc306b17230e59ee54ae0a5ae327d534f075edb4905f3d9a990b521d5bf42'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '5b45e761294c946e7093d03b433af8795e75d314125141e3b840bab7935bddd5'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'

  zap trash: [
               '~/Library/Application Support/BBEdit',
               '~/Library/Preferences/com.barebones.bbedit.plist',
               '~/Library/BBEdit',
               '~/Library/Caches/com.barebones.bbedit',
             ]
end
