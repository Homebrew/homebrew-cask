cask 'mediainfo' do
  version '0.7.95'
  sha256 '49ab4c02296911c518cdbc84859ea340ae2816e4fb794141ccdca8655a102432'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '7a7de7aa63d5adb4660b5e39b40a10336b8e91cd1afc731064e9436b06c70c4b'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
