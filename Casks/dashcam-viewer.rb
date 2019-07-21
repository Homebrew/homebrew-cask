cask 'dashcam-viewer' do
  version '3.2.7'
  sha256 '112a950db5ab95acaa5c659321bf744ee2b3b0615737754845dabb8028714e23'

  # aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv was verified as official when first introduced to the cask
  url "https://aws-website-dcv-downloads-c8kwd.s3.amazonaws.com/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast 'https://dashcamviewer.com/'
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
