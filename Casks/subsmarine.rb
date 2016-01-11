cask 'subsmarine' do
  version '1.2.2'
  sha256 'b6533f4fa1f3d477a7474a7c5f3baeb8c0c06b8da0d83ca8acddd138cfd1aeb1'

  url "http://www.cocoawithchurros.com/downloads/SubsMarine.#{version}.zip"
  appcast 'http://www.cocoawithchurros.com/shine/appcast.php?id=7',
          :sha256 => 'bbb2b6362544e5e4a23e0716592fb151005054a2f9dc13903139fb541dbd082d'
  name 'SubsMarine'
  homepage 'http://www.cocoawithchurros.com/subsmarine.php'
  license :commercial

  app 'SubsMarine.app'
end
