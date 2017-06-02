cask 'mediainfo' do
  version '0.7.96'
  sha256 '48f80b6c8bf17049d24d74b47a0ed2f8d0feb8ded13d61ab57e51be48939cb34'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '3cb2fe783dc79b65374c461f6d21ee6d29a970ed0ec2a520512550e5a0ca5990'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
