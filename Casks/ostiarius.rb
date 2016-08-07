cask 'ostiarius' do
  version '1.1.0'
  sha256 '32b1e0071985ba804a6ca3131504f0d8d789e89950110a8919995c607e447dce'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/Ostiarius_#{version}.zip"
  name 'Ostiarius'
  homepage 'https://objective-see.com/products/ostiarius.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ostiarius.app'

  uninstall quit:   'com.objectiveSee.Ostiarius',
            kext:   'com.objective-see.OstiariusKext',
            delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.objectivesee.ostiarius.sfl'
end
