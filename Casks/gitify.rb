cask 'gitify' do
  version '3.0.5'
  sha256 '5074e459a0521a5d9407934057ef235a35bb5caf6051efcee5226c1dd2d44c78'

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
