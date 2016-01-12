cask 'subsmarine' do
  version '1.2.2'
  sha256 'b6533f4fa1f3d477a7474a7c5f3baeb8c0c06b8da0d83ca8acddd138cfd1aeb1'

  url "http://www.cocoawithchurros.com/downloads/SubsMarine.#{version}.zip"
  appcast 'http://www.cocoawithchurros.com/shine/appcast.php?id=7',
          :sha256 => '3c7f4e70f5fe98f916e71d8884f84fc8e03cd550a00ed4e1f38e861aa71b4c87'
  name 'SubsMarine'
  homepage 'http://www.cocoawithchurros.com/subsmarine.php'
  license :commercial

  app 'SubsMarine.app'
end
