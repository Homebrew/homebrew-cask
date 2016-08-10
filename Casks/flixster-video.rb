cask 'flixster-video' do
  version '2.6.5.535'
  sha256 '24079b6027c4dcf3fcd0365db0c3a6e06d5ad332ac98978377face1a329479f3'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '8f88a3500d628926926f82f224c4013f7af90afe8786cf36b88eeb250127f2f5'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
