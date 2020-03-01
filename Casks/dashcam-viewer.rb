cask 'dashcam-viewer' do
  version '3.4.0'
  sha256 '8c03e27d014b909af1151789f008b84fb93be467401a3508d282c99269cb2d12'

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
