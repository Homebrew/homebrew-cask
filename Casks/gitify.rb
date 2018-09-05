cask 'gitify' do
  version '2.0.2'
  sha256 'c0d206b5160850c89dafcb330fa4df74c53de457154bf765257f7fe343f675f6'

  url "https://github.com/manosim/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/manosim/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/manosim/gitify'

  app 'Gitify.app'

  uninstall quit: [
                    'com.electron.gitify',
                    'com.electron.gitify.helper',
                  ]

  zap trash: [
               '~/Library/Application Support/gitify',
               '~/Library/Preferences/com.electron.gitify.helper.plist',
               '~/Library/Preferences/com.electron.gitify.plist',
               '~/Library/Saved Application State/com.electron.gitify.savedState',
             ]
end
