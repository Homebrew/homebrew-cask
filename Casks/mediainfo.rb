cask 'mediainfo' do
  version '0.7.82'
  sha256 'b35594a95adbe11636db9bdc1a2ed122de1a5f6cfcda1591845e477b6e3142f8'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'
  license :bsd

  app 'MediaInfo.app'
end
