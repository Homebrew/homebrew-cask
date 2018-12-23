cask 'knockknock' do
  version '2.0.3'
  sha256 '61cad0202c1970a8800afedd0760b035611398b5dae853bffd2efa6c1f20ed26'

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
