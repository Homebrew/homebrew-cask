cask 'itubedownloader' do
  version '6.3.6,1525200302'
  sha256 '065c679dfb9f9150c45a1d339710e0916c7cf7ffb36f6feb96f70a9bd5fda693'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml',
          checkpoint: '3c3100c959672e8e8bb665865f72df3e31ff890733c9fe63ec4774b7b2b0bda4'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
