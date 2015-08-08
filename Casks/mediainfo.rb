cask :v1 => 'mediainfo' do
  version '0.7.76'
  sha256 'e41893836093c8174b8d82b621d56ecca553dfe701ef6eb7722b09daf61cd936'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'
  license :bsd

  app 'MediaInfo.app'
end
