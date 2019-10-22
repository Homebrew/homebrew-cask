cask 'dashcam-viewer' do
  version '3.3.0'
  sha256 '1c54b2e08f03d6931d8a860552bb42908abe1bc24f918c3e4933bf2017815d62'

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
