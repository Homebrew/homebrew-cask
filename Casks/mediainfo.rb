cask 'mediainfo' do
  version '0.7.92'
  sha256 'ef237b9e05d225606bc95825573a5c172477e510f0bf132687866cc4df02a52e'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'a175aa24917dfa35edbf56625b4b8a839600b1ab753f4384d710c36b9a3f2422'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
