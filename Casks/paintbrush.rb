cask 'paintbrush' do
  version '2.4.1'
  sha256 '2695594cf3797713aae58ea1919a78c01a5efc6e856777cbaeadf69297e3b243'

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
