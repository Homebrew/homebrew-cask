cask 'mediainfo' do
  version '0.7.84'
  sha256 '33719ef8301bed5ce7f3d6acd1058363449877ee2e48f4da2dcdee81e6fd7596'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'
  license :bsd

  app 'MediaInfo.app'
end
