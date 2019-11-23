cask 'knockknock' do
  version '2.1.0'
  sha256 '8595f196f9233f8016bf0dfd5f7814e7e61a48073245ca4a853a6a8e53c5a2e1'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KnockKnock.txt'
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'

  app 'KnockKnock.app'

  zap trash: [
               '~/Library/Caches/com.objective-see.KnockKnock',
               '~/Library/Preferences/com.objective-see.KnockKnock.plist',
               '~/Library/Saved Application State/com.objective-see.KnockKnock.savedState',
             ]
end
