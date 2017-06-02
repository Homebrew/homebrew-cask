cask 'gitify' do
  version '1.1.0'
  sha256 '5fd6fc08dc8aefa7199ac208dc91a0d98b5c0270b26f93f6471661a1c2632b45'

  url "https://github.com/manosim/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/manosim/gitify/releases.atom',
          checkpoint: 'aef1ed85f6a7136196d20ff34a4c93c4790209f5eb0ffebf89e2d48fdf80da2d'
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
