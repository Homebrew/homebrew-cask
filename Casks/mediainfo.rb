cask 'mediainfo' do
  version '0.7.94'
  sha256 '7d0b3a1585628ead8c924d166b69d366b889509b3516214a178a1f0bb74b72cb'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '0d4ed009a1ba2c543b16599c01ad6526c81ee2d0b59798732702bc8c76ef7d4b'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
