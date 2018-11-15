cask 'dashcam-viewer' do
  version '3.1.5'
  sha256 '855c5896abf8f2395b8c716bb6269df63f9ccf5182e449fca6c3e326ff38c9ab'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Dashcam Viewer.app'
end
