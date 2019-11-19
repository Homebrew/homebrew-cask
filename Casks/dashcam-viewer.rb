cask 'dashcam-viewer' do
  version '3.3.1'
  sha256 '3a956382fe4962ebc961d4ec509959fcc6c5b602117c3186df71a93ffa5923e8'

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
