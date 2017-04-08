cask 'dashcam-viewer' do
  version '2.5.9'
  sha256 '374fdcb918c91df5ca553f8baeffcb512112ec36975354d63510ef4855cee960'

  # dropboxusercontent.com/u/25150850 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/25150850/Dashcam_Viewer_v#{version}.dmg"
  name 'Dashcam Viewer'
  name 'Dashcam Viewer by Earthshine Software'
  homepage 'https://dashcamviewer.com/'

  app 'Dashcam Viewer.app'
end
