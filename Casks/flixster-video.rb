cask 'flixster-video' do
  version '2.6.5.528'
  sha256 'de991a80cb0b57edee1d68815d46aed509fbacb70d0c859775421f7331080926'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '160429618f4669169609f0866a23f90403e88abce85ad4d97800aa869fa02dea'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
