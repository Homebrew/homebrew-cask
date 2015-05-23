cask :v1 => 'flixster-desktop' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'http://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  name 'Flixster Desktop for Mac'
  appcast 'http://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          :sha256 => '56ab4151b24f968dfc4234186b9f566ebc99c9c75729bcc2508f722fad0700fa'
  homepage 'http://www.flixster.com/about/ultraviolet/'
  license :gratis

  postflight do
    suppress_move_to_applications :key => 'moveToApplicationsFolderAlertSuppress'
  end

  app 'Flixster Desktop.app'
end
