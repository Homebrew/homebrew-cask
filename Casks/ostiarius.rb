cask 'ostiarius' do
  version '1.2.0'
  sha256 '80d67c4e090013ee3fa9d87696778ec4e6a303362147158966fe547c8c45727a'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/Ostiarius_#{version}.zip"
  name 'Ostiarius'
  homepage 'https://objective-see.com/products/ostiarius.html'

  app 'Ostiarius.app'

  uninstall quit:   'com.objectiveSee.Ostiarius',
            kext:   'com.objective-see.OstiariusKext',
            delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.objectivesee.ostiarius.sfl'
end
