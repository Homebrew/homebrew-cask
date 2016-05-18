cask 'flixster-video' do
  version '2.6.2.526'
  sha256 'dd1115ad5ac28246bc74c3d46df5066fd8bd236830a89f1e22ea56fcdbf17788'

  # d1rtylazwb77ux.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktop.zip'
  appcast 'https://d1rtylazwb77ux.cloudfront.net/desktop/mac/FlixsterDesktopMacAppcast.xml',
          checkpoint: '20c3667ff31a2e488951a235a9c61d031e154528fb172686759e0fd9b00eba43'
  name 'Flixster Video'
  homepage 'https://www.flixster.com/about/ultraviolet/'
  license :gratis

  app 'Flixster Video.app'

  postflight do
    suppress_move_to_applications key: 'moveToApplicationsFolderAlertSuppress'
  end
end
