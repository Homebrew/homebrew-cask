cask 'netiquette' do
  version '1.0.0'
  sha256 '30d0d412bf5b7ac28c53f436dec707857435a41f41401d0cadf2910e610cf72f'

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/Netiquette_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/Netiquette.txt'
  name 'Netiquette'
  homepage 'https://objective-see.com/products/netiquette.html'

  depends_on macos: '>= :mojave'

  app 'Netiquette.app'

  zap trash: [
               '~/Library/Caches/com.objective-see.Netiquette',
               '~/Library/Preferences/com.objective-see.Netiquette.plist',
             ]
end
