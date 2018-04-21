cask 'dragthing' do
  version '5.9.17'
  sha256 '62d553878267d617aa2be48f09dfc401d08afce216cd42aef7441f4f95dd4cff'

  # amazonaws.com/tlasystems was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tlasystems/DragThing-#{version}.dmg"
  appcast 'https://www.dragthing.com/english/download.html',
          checkpoint: '5d2dcc6c9cc11ff50f98d5d62153263b78db15a0aa2e5caf84afe49943ffb66e'
  name 'DragThing'
  homepage 'https://www.dragthing.com/'

  app 'DragThing.app'
end
