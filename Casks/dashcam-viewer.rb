cask 'dashcam-viewer' do
  version '2.5.6'
  sha256 '1655f99505b298772c03d88403ec99281f0e67c6fccd4d925f49ef251a9a8709'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
