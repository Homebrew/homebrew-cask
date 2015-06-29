cask :v1 => 'mediainfo' do
  version '0.7.72'
  sha256 'd7b283ec737a1e1e967b6ba4ab89c74ff3777e4b2ab53fecbc4381fd662dc723'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MediaInfo.app'
end
