cask 'mediainfo' do
  version '0.7.93'
  sha256 '88025567e517825a34d626d2b39370dc6f9289cb09ce6f3664ecd871576c760f'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '239841c19e101ac144948117ad8f29cbda885fb2d9ba61c024bd8face292a33e'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
