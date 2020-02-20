cask 'gitify' do
  version 'v3.0.0'
  sha256 '119525631abd5468f8b0494d6bba0288b7d543af1f0f042a9eabf001ef8736f0'

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
