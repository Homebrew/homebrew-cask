cask 'dashcam-viewer' do
  version '2.5.7'
  sha256 'dba0c7f4675653e566983399f9239f6b8f58017a012fd37cad9e1ff2ead86976'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
