cask 'knockknock' do
  version '2.0.2'
  sha256 '5b57a14a360d747028d9e2917cc424d13b8166c1ae8398a48157367225ee0745'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KnockKnock.txt'
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
