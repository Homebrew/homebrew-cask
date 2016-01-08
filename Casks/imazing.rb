cask 'imazing' do
  version '1.4.4,1451586354'
  sha256 '5baa4b21d6738483861286d03f2455ed8fa3662b93dfa5b95620534f7d30057d'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.before_comma}/#{version.after_comma}/iMazingforMac-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => 'ebabe5b4780b57bf246a5dd55e821559f0286e3c8aaf03895afd58516306e331'
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
