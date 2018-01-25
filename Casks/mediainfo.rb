cask 'mediainfo' do
  version '17.12'
  sha256 '2e319a2cbe0a54ad5a421a7ed5b023cca2eec20fe78f03686487ce08ac84b93b'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '3a01b6cde3c5af91fc8fb3543b212a6f618c49382b0f0ab741ab4aacc409cce5'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
