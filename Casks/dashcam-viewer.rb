cask 'dashcam-viewer' do
  version '3.2.2'
  sha256 '9afb60522e1cd01ad5b4d1380d610983f41c4ab113852f785249a3dd8c1ac041'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
