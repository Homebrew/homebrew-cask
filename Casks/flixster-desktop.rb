cask :v1 => 'flixster-desktop' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  name 'Flixster Desktop for Mac'
  appcast 'https://dtmmt9rxsy2no.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          :sha256 => 'd831ab595160f76b60b038299d2ca9ae32780c150c941886cec54cde6e5ab695'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  postflight do
    suppress_move_to_applications :key => 'moveToApplicationsFolderAlertSuppress'
  end

  app 'Flixster Desktop.app'
end
