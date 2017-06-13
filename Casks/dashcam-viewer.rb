cask 'dashcam-viewer' do
  version '2.6.5'
  sha256 'cfc185fd37141c8a70aa235b55c8323351bfdde03afca871c6dcef5217cbbacb'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
