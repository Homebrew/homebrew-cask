cask 'snapndrag' do
  version '4.2.2'
  sha256 'c06ec405df7bfaad46f8a515798f7092c557dc65a9faed6d1fff1a29b2d2e47f'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml',
          checkpoint: 'f95d7fd7cc8e6ab7797be453e95bfb696db51bf5388fb53df16a1b233f5e73d8'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
