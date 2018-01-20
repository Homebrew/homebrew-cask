cask 'knockknock' do
  version '1.9.0'
  sha256 '3af57a0689d9a6c28b1cb3a0c9624b832b1d77a17d9af5c2d3df9b05c709072e'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KnockKnock.txt',
          checkpoint: '81ac609807675f5159467d8bb0c6caea39a3196ebd6e05b6a165411044b87cf2'
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
