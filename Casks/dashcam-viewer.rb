cask 'dashcam-viewer' do
  version '3.4.2'
  sha256 'e512a99a9fff4f39d5f6991dc69182d971e02d58bc1aa59605db6c75b7f3305b'

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/ was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
