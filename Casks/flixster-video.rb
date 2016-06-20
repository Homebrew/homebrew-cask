cask 'flixster-video' do
  version '2.6.5.532'
  sha256 '4b87b8c142df47056730d47a04dba7b798ce925bc66b736911259656243b27d1'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: 'b576c9b6d28c891d19596b3ad6e093e29f432a0b5f45641a5208b40cd9501372'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
