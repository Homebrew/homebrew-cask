cask 'flixster-desktop' do
  version '2.5.12.335'
  sha256 '9b884410c07dd2f7f96b35b5dd0fcd9322b13b448cae69a494324cafa24deeb6'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '507f4bf227962190e023b4427d6a6c521a61b7db1a175467256546afd91a2240'
  name 'Flixster Desktop for Mac'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Desktop.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
