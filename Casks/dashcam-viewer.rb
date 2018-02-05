cask 'dashcam-viewer' do
  version '2.7.7'
  sha256 '0e789fe7a09380869a0d4ccd2bb502c0ad3c266af1fde9719ba15346719bafb9'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Dashcam Viewer.app'
end
