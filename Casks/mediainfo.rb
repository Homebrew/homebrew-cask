cask 'mediainfo' do
  version '0.7.91'
  sha256 '5f5e53d69bbae453dc00128a0100a226419a1a5237088dd859d2231106f6613e'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'eadd4adf6df4b98d2266dd2a0182ac541d37e494e0a0efdcba346c433016258b'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
