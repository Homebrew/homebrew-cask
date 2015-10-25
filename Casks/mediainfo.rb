cask :v1 => 'mediainfo' do
  version '0.7.77'
  sha256 '564f4caaba98b8f12e28a4d731354f0ef1385b788bc0966ec466c79737469922'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'
  license :bsd

  app 'MediaInfo.app'
end
