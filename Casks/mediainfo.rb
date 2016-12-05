cask 'mediainfo' do
  version '0.7.90'
  sha256 '3f964ee8432fe6d89b9e1ba265680c6451b1fac552d5294a4f4d345484155c4d'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'eadd4adf6df4b98d2266dd2a0182ac541d37e494e0a0efdcba346c433016258b'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
