cask 'dashcam-viewer' do
  version '2.6.1'
  sha256 '314e75b533ebd690b019d4e940b9a99bd5f4fde60874cfbdddb61a9dbcd5dcde'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
