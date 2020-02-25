cask 'gitify' do
  version '3.0.1'
  sha256 '7c4aec3e4812692922c05a3b2aa5a98eff4d25f4953b7a5f7813fceca81af597'

  url "https://github.com/manosim/gitify/releases/download/v#{version}/Gitify-#{version}-mac.zip"
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
