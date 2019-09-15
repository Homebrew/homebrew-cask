cask 'dashcam-viewer' do
  version '3.2.9'
  sha256 '015177f7fa3ec9b618de96cd9b1ee3326131830af6828e5bb207e7d5cc574124'

  # aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv was verified as official when first introduced to the cask
  url "https://aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
