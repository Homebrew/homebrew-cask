cask 'cooviewer' do
  version '1.2b24'
  sha256 '2bc2feaebc249beaad4f43c84aadcd5f08dda9deca452251924f0b2c89df1354'

  url "http://www.geocities.jp/coo_ona/cooviewer#{version}.dmg"
  name 'cooViewer'
  homepage 'http://www.geocities.jp/coo_ona/viewer.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'cooViewer/cooViewer.app'
end
