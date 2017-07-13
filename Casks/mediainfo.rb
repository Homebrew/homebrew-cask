cask 'mediainfo' do
  version '0.7.97'
  sha256 'd55cb482fc89d31a457e9da11f57617b18bf546aa8c43120a42f5ac0ed52b9b7'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '0f95d5796562506e3748fd235dd6633495fc5f0cfe0e5c9060070d7312cdd222'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
