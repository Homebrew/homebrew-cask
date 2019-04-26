cask 'paintbrush' do
  version '2.3.0'
  sha256 'ace47b0ae40c8a1c85d5b4019559c63484eccde83cbfa4a99190428b607c8ad7'

  # downloads.sourceforge.net/paintbrush was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "https://paintbrush.sourceforge.io/updates#{version.major}x.xml"
  name 'Paintbrush'
  homepage 'https://paintbrush.sourceforge.io/'

  app 'Paintbrush.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.soggywaffles.paintbrush.sfl*',
               '~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist',
               '~/Library/Preferences/com.soggywaffles.Paintbrush.plist',
               '~/Library/Caches/com.soggywaffles.Paintbrush',
             ]
end
