cask 'ostiarius' do
  version '1.0.1'
  sha256 '7f4c3cea1d0a8fc00d64e9781be27f36ea92de3ef2533bbfcbf2781aef525565'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/objective-see/deploy/downloads/Ostiarius_#{version}.zip"
  name 'Ostiarius'
  homepage 'https://objective-see.com/products/ostiarius.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ostiarius.app'

  uninstall quit:   'com.objectiveSee.Ostiarius',
            kext:   'com.objective-see.OstiariusKext',
            delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.objectivesee.ostiarius.sfl'
end
