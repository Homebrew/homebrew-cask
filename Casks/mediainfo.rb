cask 'mediainfo' do
  version '0.7.88'
  sha256 'd7c4cb8ecdbc3c56d38aacaaa6f6c4946b6545c767b12f2398c25583ba3e2c1b'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: 'f7c3ad54ec9b70c62cb140a106f7199d02ea0d606f00538c1390027d282a2cbf'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
