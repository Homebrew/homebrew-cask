cask 'dashcam-viewer' do
  version '2.6.8'
  sha256 '72ae74866a81c8dff2730ba67f115ee3c2ee57bf918ccba2ec96547d54c1be0b'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
