cask 'knockknock' do
  version '1.9.2'
  sha256 'acad0b3091db27483bed506d1442260e7efb0cda69f6364a7c747de25fd39163'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/KnockKnock.txt',
          checkpoint: 'f5d04e72277c4e36f225e3365cf28d711ddf0ad0c28cef0a23717487e6ee4bd3'
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
