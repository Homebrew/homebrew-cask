cask 'imazing' do
  version '1.4.5,1452535083'
  sha256 '194e27e1ed6db1d8f15517dce613a582cf1e4f7b0c7be2b44ec2ca93eba76056'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.before_comma}/#{version.after_comma}/iMazingforMac-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => 'd706a22ec9711fcf1879194628468da7cf795adab4d8d73d0e701503ce1ebb7d'
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
