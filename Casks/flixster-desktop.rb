cask 'flixster-desktop' do
  version '2.5.10.323'
  sha256 '15cb9c5eb8ebac0d994114394c163afb97e5db8d22e7f256bb3a4dea29e86e58'

  # cloudfront.net is the official download host per the vendor homepage
  url 'http://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          :sha256 => 'd2d08f23061e1d0bcb3ece14d5023ca5c372e1948a46bc63f14aa3e3466e7485'
  name 'Flixster Desktop for Mac'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Desktop.app'

  postflight do
    suppress_move_to_applications :key => 'moveToApplicationsFolderAlertSuppress'
  end
end
