cask 'flixster-desktop' do
  version '2.5.10.323'
  sha256 '15cb9c5eb8ebac0d994114394c163afb97e5db8d22e7f256bb3a4dea29e86e58'

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          :checkpoint => 'a427240ad5a5a433173df4b5cc7462644209d4da3476734fc77154498d0da598'
  name 'Flixster Desktop for Mac'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Desktop.app'

  postflight do
    suppress_move_to_applications :key => 'moveToApplicationsFolderAlertSuppress'
  end
end
