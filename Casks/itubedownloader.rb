cask 'itubedownloader' do
  version '6.4.0.1,1540241605'
  sha256 'c45633b3cb1edba6e275b3b98b2bc2075432dd48ab3af0e40e7e1e8aca4cc3cc'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
