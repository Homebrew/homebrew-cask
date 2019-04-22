cask 'dhs' do
  version '1.4.0'
  sha256 '37211f5051413fa866781e6943ad2adb3c68546fcfd3033c0d69a0bbeadc5462'

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
