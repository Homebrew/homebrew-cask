cask 'flixster-video' do
  version '2.7.0.610'
  sha256 '6ebddd7540244ea2fb8ae89bfbf403758dfec805d5207e303eca8b428db016be'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '36972a98c844df356b2d2ceb2f08ac71441fdacfe99b9a93b24ccab193f0d9fd'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
