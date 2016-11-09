cask 'flixster-video' do
  version '2.7.0.606'
  sha256 'f9b447fbb938d62eba39618c1f85473915fa20ca01154c10c57784010bb4ed72'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '70d0513d0f9ccb486129b0a4aa6b728877aa9849adc57a4f3083b953c2598dc1'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
