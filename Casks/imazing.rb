cask :v1 => 'imazing' do
  version '1.3.7-1445434006'
  sha256 '23e7e45d07fe7f8b07363100ed812673ad81b12dc1fb177d57b2a8a934d13330'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.sub(%r{-.*},'')}/#{version.sub(%r{.*?-},'')}/iMazingforMac-#{version.sub(%r{-.*},'')}.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => '396e01d8a69fa6a43886a90dd3a9e10f2febfc4397cf29aaacd7e9e0aa0aaeab'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'

  depends_on :macos => '>= :lion'

  zap :delete => [
        '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.digidna.imazingmac.sfl',
        '~/Library/Application Support/iMazing',
        '~/Library/Caches/com.DigiDNA.iMazingMac',
        '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingMac',
        '~/Library/Caches/iMazing',
        '~/Library/Preferences/com.DigiDNA.iMazingMac.plist'
      ]
end
