cask :v1 => 'mediainfo' do
  version '0.7.66'
  sha256 'c96dc8998fa323d04d82ee146a7aeee63b32a6e67c5750ba099f79900788a442'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  homepage 'http://mediaarea.net/en/MediaInfo'
  license :unknown

  app 'MediaInfo.app'
end
