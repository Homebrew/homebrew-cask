cask 'gitify' do
  version '2.0.0'
  sha256 'a41ff8647957f5901860e924e75f0ecbce8518fadce349784a1dcd15985050ce'

  url "https://github.com/manosim/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/manosim/gitify/releases.atom',
          checkpoint: 'de8b362f4876630b82163d1d1a6ed7ac38e3396fc8bdfdbe61eadb8e839a1555'
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
