cask 'mediainfo' do
  version '17.10'
  sha256 'ac54926c6997d613d91daf8ded8779197e19331bcd7759dd2053418a0523b9f1'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '4b6df3954472f21a21678b384024688930f178ab44b5f39ae64e02c6cd67455b'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
