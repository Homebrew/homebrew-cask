cask 'imazing' do
  version '1.3.8-1447430071'
  sha256 'a78d45218cde01845c20087a68a77153a4746fed2fe9a6b35061ddc227a960f8'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.sub(%r{-.*}, '')}/#{version.sub(%r{.*-}, '')}/iMazingforMac-#{version.sub(%r{-.*}, '')}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => '57e3299100e16ac2f4f828d652c5e5a104d09119fb299ad39007dec5275e07e8'
  name 'iMazing'
  homepage 'https://imazing.com/'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'iMazing.app'

  zap :delete => [
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.digidna.imazingmac.sfl',
                   '~/Library/Application Support/iMazing',
                   '~/Library/Caches/com.DigiDNA.iMazingMac',
                   '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingMac',
                   '~/Library/Caches/iMazing',
                   '~/Library/Preferences/com.DigiDNA.iMazingMac.plist',
                 ]
end
