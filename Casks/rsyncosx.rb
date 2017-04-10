cask 'rsyncosx' do
  version '4.2.0'
  sha256 '2ec841b01b2a246b939293a2282058b389615d3119bbff3356f8152eec47f491'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: '7194c9d102991864b6333dc9ca5dd1f1b8ccc23d81beb2f737999fca1ac3861f'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap delete: [
                '~/Library/Caches/no.blogspot.RsyncOSX',
                '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
                '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
              ]
end
