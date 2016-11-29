cask 'encryptr' do
  version '2.0.0'
  sha256 '54e2ef8f8c4d22a20793b68fd35c65f8af34ffd783c48140b84c1a9b445589ea'

  url "https://spideroak.com/dist/encryptr/signed/osx/Encryptr-v#{version}-mac.dmg"
  appcast 'https://github.com/SpiderOak/Encryptr/releases.atom',
          checkpoint: 'a7e094ccb571d99d08b9dd64c01caed8a8db15ff4563861f9af364b9208b9173'
  name 'SpiderOak Encryptr'
  homepage 'https://spideroak.com/solutions/encryptr'

  app 'Encryptr.app'

  zap delete: [
                '~/Library/Preferences/org.devgeeks.encryptr.plist',
                '~/Library/Saved Application State/org.devgeeks.encryptr.savedState',
              ]
end
