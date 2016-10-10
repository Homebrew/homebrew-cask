cask 'dashcam-viewer' do
  version '2.1.6'
  sha256 'cb0a03231fd70a63763c6b13c5ff672c584b164f505e9c1b80e0d4b3e7ee091b'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com'

  app 'Dashcam Viewer.app'
end
