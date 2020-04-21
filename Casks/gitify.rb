cask 'gitify' do
  version '3.0.2'
  sha256 '141d7795a04488b34607d127b330435bc8b2ce85f227c68597a3dba411c6cd94'

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
