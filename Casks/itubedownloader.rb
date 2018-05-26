cask 'itubedownloader' do
  version '6.3.7,1526476644'
  sha256 '6d0458187cdcb5ea04b0345dce25620ebfd7faa41345ff656216b1223677457b'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml',
          checkpoint: 'ed10589cfc2c2dd7b29cd8dca515ed8371de081a29c677ead57a9cdb0f25148a'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
