cask 'flixster-video' do
  version '2.7.0.604'
  sha256 'f5237ee6b762879959ef1c2bd6be63ef8aa6fc80aa7fce833a554b3096ffbedf'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '632ec893948fab75b406925d603b5637ead4dac2ddc89e2beeac4850e6394ef6'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
