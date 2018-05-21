cask 'dashcam-viewer' do
  version '3.0.0'
  sha256 '7cc34a805ac196bac1dcabf905aaecd2be8ff8b7eae3869d3f10f1c86e156b5e'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Dashcam Viewer.app'
end
