cask 'gitify' do
  version '1.1.0'
  sha256 '5fd6fc08dc8aefa7199ac208dc91a0d98b5c0270b26f93f6471661a1c2632b45'

  url "https://github.com/manosim/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/manosim/gitify/releases.atom',
          checkpoint: '793158faf626b7fff00df7204b0b8061fc6128384be82d7e2bdf5556d89e2276'
  name 'Gitify'
  homepage 'https://github.com/manosim/gitify'

  app 'Gitify.app'

  zap delete: [
                '~/Library/Application Support/gitify',
                '~/Library/Preferences/com.electron.gitify.helper.plist',
                '~/Library/Preferences/com.electron.gitify.plist',
                '~/Library/Saved Application State/com.electron.gitify.savedState',
              ]
end
