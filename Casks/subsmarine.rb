cask 'subsmarine' do
  version '1.2.2'
  sha256 'b6533f4fa1f3d477a7474a7c5f3baeb8c0c06b8da0d83ca8acddd138cfd1aeb1'

  url "http://www.cocoawithchurros.com/downloads/SubsMarine.#{version}.zip"
  appcast 'http://www.cocoawithchurros.com/shine/appcast.php?id=7',
          checkpoint: 'a6076937b5f95403d0d867e409b7d833f5f1d56cd0c060be4ea6ae3546a3554a'
  name 'SubsMarine'
  homepage 'http://www.cocoawithchurros.com/subsmarine.php'
  license :commercial

  app 'SubsMarine.app'
end
