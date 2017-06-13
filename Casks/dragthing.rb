cask 'dragthing' do
  version '5.9.17'
  sha256 '62d553878267d617aa2be48f09dfc401d08afce216cd42aef7441f4f95dd4cff'

  # amazonaws.com/tlasystems was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tlasystems/DragThing-#{version}.dmg"
  appcast 'http://www.dragthing.com/english/download.html',
          checkpoint: '2f4f10b7778cbc2ce8198bafdc1e63cd0edb626054926cf25eb20325ea206c6d'
  name 'DragThing'
  homepage 'http://www.dragthing.com/'

  app 'DragThing.app'
end
