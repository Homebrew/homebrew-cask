cask 'dashcam-viewer' do
  version '2.6.4'
  sha256 '733b637e45301a2ecbd3364070fa453a456d825d57d6466aecffc51f4e912f49'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
