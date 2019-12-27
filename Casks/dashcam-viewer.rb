cask 'dashcam-viewer' do
  version '3.3.2'
  sha256 'd2b51036aed654eb7a267009d7df7c31f6b38961eeb8c21fe8f6b9669e9025bb'

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
