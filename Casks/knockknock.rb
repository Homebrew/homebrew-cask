cask 'knockknock' do
  version '1.9.3'
  sha256 '37f59fbeaa7e80fe92bd1a25bd6342d7b3f78778a248c307336e24cfebd3dbf8'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KnockKnock.txt',
          checkpoint: '2df38711440d62d4504ad9007a20452ee4448227e011230a3d2934a764f06f02'
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'

  depends_on macos: '>= :mountain_lion'

  app 'KnockKnock.app'

  zap trash: [
               '~/Library/Caches/com.objective-see.KnockKnock',
               '~/Library/Preferences/com.objective-see.KnockKnock.plist',
               '~/Library/Saved Application State/com.objective-see.KnockKnock.savedState',
             ]
end
