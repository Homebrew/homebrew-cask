cask 'dashcam-viewer' do
  version '3.2.5'
  sha256 '392b9c1608518efc966056918e988bbe619f867fbf63354f7a578f55b435f038'

  # aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv was verified as official when first introduced to the cask
  url "https://aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
