cask 'dashcam-viewer' do
  version '3.2.6'
  sha256 '8d2c1991bf68f2870798f7ceb4f9805008cad0f0018d5d781b04d790329bfbb9'

  # aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv was verified as official when first introduced to the cask
  url "https://aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
