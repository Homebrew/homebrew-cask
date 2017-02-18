cask 'mediainfo' do
  version '0.7.92.1'
  sha256 '8ae9e6bc3e25efa56ecc170d0a744559d06fd5d5e2d739b4ebbbd67dc14a6642'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'a175aa24917dfa35edbf56625b4b8a839600b1ab753f4384d710c36b9a3f2422'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
