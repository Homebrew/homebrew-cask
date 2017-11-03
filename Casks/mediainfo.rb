cask 'mediainfo' do
  version '17.10'
  sha256 'ac54926c6997d613d91daf8ded8779197e19331bcd7759dd2053418a0523b9f1'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'e3ddd73ca6d2ff285dc82f91e307a266a315bd666e971df69ccc5af0d317d0c6'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
