cask 'itubedownloader' do
  version '6.3.2,1509417770'
  sha256 'dfdf21331a24da4f2e85532112c13b3d88b354d3fdc3b6afa01fb02061a5a651'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml',
          checkpoint: 'd534df0b9b617b025c1243aef2c743cf59faac2807a0b59967fcd7964ba90459'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  app 'iTubeDownloader.app'
end
