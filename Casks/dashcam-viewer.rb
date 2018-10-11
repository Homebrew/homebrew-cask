cask 'dashcam-viewer' do
  version '3.1.2'
  sha256 'c56067b076f44f4c1968b8eae24f4ca8b71b6522f27bfbc65ae2eff5c585773a'

  # s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/aws-website-dcv-downloads-c8kwd/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Dashcam Viewer.app'
end
