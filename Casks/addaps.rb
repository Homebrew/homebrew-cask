cask 'addaps' do
  version 'beta-0.3.10'
  sha256 'b9b48d38e7e17db6bc1e8fe2e8ad99ed9a723b6becf5b666f9d8c6b8f3b630fb'

  # s3.amazonaws.com/addaps-beta was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/addaps-beta/Addap's+#{version}-mac.zip"
  name 'Addap\'s'
  homepage 'https://www.addaps.com/'

  app 'Addap\'s beta.app'

  uninstall pkgutil: 'com.electron.addaps.*'

  zap delete: [
                '~/Library/Logs/Addap\'s beta',
                '~/Library/Application Support/Addap\'s',
                '~/Library/Application Support/Addap\'s beta',
                '~/Library/Preferences/com.electron.addaps.helper.plist',
                '~/Library/Preferences/com.electron.addaps.plist',
                '~/Library/Saved Application State/com.electron.addaps.savedState',
              ]
end
