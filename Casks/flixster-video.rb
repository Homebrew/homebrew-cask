cask 'flixster-video' do
  version '2.7.0.608'
  sha256 'f9b447fbb938d62eba39618c1f85473915fa20ca01154c10c57784010bb4ed72'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '0e5e4ab27bdd264491186aa849ab6c134f32316fcac060cb4d1039baac39c593'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
