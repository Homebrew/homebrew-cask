cask :v1 => 'ibrowse' do
  version '1.0.0.5'
  sha256 'c3cae297d676e64c3d21638c21583f7c30a8fdbe6a4e127adb0857bafcd8037d'

  url "http://cdn.macroplant.com/release/iBrowse-#{version}x.dmg"
  homepage 'http://www.ibrowseapp.com/'
  license :unknown

  app 'iBrowse.app'
end
