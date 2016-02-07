cask 'flixster-desktop' do
  version '2.5.12.333'
  sha256 '2916b4f2fd2c50f355e427369f57b4f51ec32d22add34ba0abbc3467a849892c'

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: 'ed42b9935d8dab11e2acb5502ccd1076c9c1e3d1d477a99c9dc569cfbd3a9706'
  name 'Flixster Desktop for Mac'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Desktop.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
