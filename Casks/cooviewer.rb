cask :v1 => 'cooviewer' do
  version '1.2b24'
  sha256 '2bc2feaebc249beaad4f43c84aadcd5f08dda9deca452251924f0b2c89df1354'

  url "http://www.geocities.jp/coo_ona/cooviewer#{version}.dmg"
  homepage 'http://www.geocities.jp/coo_ona/viewer.html'
  license :unknown    # todo: improve this machine-generated value

  app 'cooViewer/cooViewer.app'
end
