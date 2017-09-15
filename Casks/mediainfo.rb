cask 'mediainfo' do
  version '0.7.99'
  sha256 '34650dd22250e698d2c8c0468f68fe75380594c9cedc58ce4651ef108506df1f'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml',
          checkpoint: '93299a75547fe7a09abc95044b0eccd9615084f98b3359e604154fc4e24f0dc0'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'
end
