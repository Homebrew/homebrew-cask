cask 'mediainfo' do
  version '18.03'
  sha256 '759c6fb631520b76da3712893cd12e0292c1668a7ee66980f75b121b31c290ce'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'dc8543af747b5dce656755b112fa1e9a4018e90cd94f7d89b0f90157936dc910'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
