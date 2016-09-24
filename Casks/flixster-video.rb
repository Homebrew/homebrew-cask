cask 'flixster-video' do
  version '2.6.6.538'
  sha256 '84b1c0e285c8b5b0b35a4407ed4299038603eae2a1adbe758484603566e754be'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: 'cb865d6e566d861f67feee2bdfc4026122be341076f8fd3b230c138c5cf26f8a'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
