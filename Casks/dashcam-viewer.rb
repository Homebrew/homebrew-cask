cask 'dashcam-viewer' do
  version '3.2.4'
  sha256 '7fe01d4ccb0cf1dc2e16a2a560a7f034a8766969997a49069400e3f851bc2b6b'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
