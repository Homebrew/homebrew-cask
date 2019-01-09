cask 'dhs' do
  version '1.3.1'
  sha256 '3fc293da9f4730790e8c07833e0225fa6b57d2455bec53dd8e5b1e50de41c8d4'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/DHS_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/DHS.txt'
  name 'Dylib Hijack Scanner'
  homepage 'https://objective-see.com/products/dhs.html'

  app 'DHS.app'

  zap trash: [
               '~/Library/Preferences/com.objective-see.DHS.plist',
               '~/Library/Saved Application State/com.objective-see.DHS.savedState',
             ]
end
