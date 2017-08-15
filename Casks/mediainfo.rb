cask 'mediainfo' do
  version '0.7.98'
  sha256 '96f952e71e1a302a52bdb9a226c4246496af892e769d4b396191227436264017'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '0650eb4cc0a43924c65afe9490c46614cf59f1f8cd7c611fdb2466da6faa3545'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
