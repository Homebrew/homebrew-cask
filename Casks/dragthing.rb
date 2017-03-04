cask 'dragthing' do
  version '5.9.17'
  sha256 '62d553878267d617aa2be48f09dfc401d08afce216cd42aef7441f4f95dd4cff'

  # amazonaws.com/tlasystems was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tlasystems/DragThing-#{version}.dmg"
  appcast 'http://www.dragthing.com/english/download.html',
          checkpoint: '193085839afd838f3b81674f261e32fd6d2790e938834c245d4ca1a365501446'
  name 'DragThing'
  homepage 'http://www.dragthing.com/'

  app 'DragThing.app'
end
