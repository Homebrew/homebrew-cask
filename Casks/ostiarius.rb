cask 'ostiarius' do
  version '1.2.0'
  sha256 '80d67c4e090013ee3fa9d87696778ec4e6a303362147158966fe547c8c45727a'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/Ostiarius_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/Ostiarius.txt',
          checkpoint: 'cd88c0baf70a21fd24616cdfa6821e14804874e0725802cd9ff585eb38772a10'
  name 'Ostiarius'
  homepage 'https://objective-see.com/products/ostiarius.html'

  depends_on macos: '<= :el_capitan'

  app 'Ostiarius.app'

  uninstall quit:   'com.objectiveSee.Ostiarius',
            kext:   'com.objective-see.OstiariusKext',
            delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.objectivesee.ostiarius.sfl'

  caveats do
    discontinued
  end
end
