cask 'dashcam-viewer' do
  version '3.0.3'
  sha256 'cabb0a283559e11f5667589d5a19d9fcc168d69825cf502a56d3b6e3230b99a3'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Dashcam Viewer.app'
end
