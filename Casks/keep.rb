cask 'keep' do
  version '1.1.0'
  sha256 'a99cfdb175ef78c7c4a28e9eb474f17cfc5b6ee445916a54b0bc1d17cecf3b93'

  url "https://github.com/tmcinerney/keep/releases/download/v#{version}/keep.v#{version}.zip"
  appcast 'https://github.com/tmcinerney/keep/releases.atom',
          checkpoint: 'cbb5e057b2d05a48a142c24359c17e0f52ef199d8892e206641f1386dc2adefc'
  name 'Keep'
  homepage 'https://github.com/tmcinerney/keep/'

  app 'Keep.app'

  uninstall signal: [
                      ['TERM', 'com.electron.keep'],
                      ['TERM', 'com.electron.keep.helper'],
                    ]

  zap trash: [
               '~/Library/Application Support/Keep',
               '~/Library/Caches/com.electron.keep',
               '~/Library/Preferences/com.electron.keep.plist',
               '~/Library/Preferences/com.electron.keep.helper.plist',
               '~/Library/Saved Application State/com.electron.keep.savedState',
             ]
end
