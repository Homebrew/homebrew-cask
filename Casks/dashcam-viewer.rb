cask 'dashcam-viewer' do
  version '3.4.1'
  sha256 '4ff16c32345d92127e0642f2d62b896140fd4253df6f52599aaf40021eecdec1'

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/ was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
