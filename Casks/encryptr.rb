cask 'encryptr' do
  version '2.0.0'
  sha256 '54e2ef8f8c4d22a20793b68fd35c65f8af34ffd783c48140b84c1a9b445589ea'

  url "https://spideroak.com/dist/encryptr/signed/osx/Encryptr-v#{version}-mac.dmg"
  appcast 'https://github.com/SpiderOak/Encryptr/releases.atom'
  name 'Encryptr'
  homepage 'https://spideroak.com/solutions/encryptr'
  license :gpl
  tags :vendor => 'SpiderOak'

  app 'Encryptr.app'

  zap :delete => [
                  '~/Library/Preferences/org.devgeeks.encryptr.plist',
                  '~/Library/Saved Application State/org.devgeeks.encryptr.savedState',
                 ]
end
