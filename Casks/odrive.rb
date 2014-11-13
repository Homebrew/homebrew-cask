cask :v1 => 'odrive' do
  version '2712'
  sha256 'd7782b822b057cdb8b7ff7883296c7c546601cfdf6647ce66bddd3ace89bbcc6'

  url "http://cdn-mac.odrive.com/odrive.#{version}.dmg"
  homepage 'http://www.odrive.com'
  license :unknown

  pkg "odrive.#{version}.pkg"
  uninstall :pkgutil => 'com.oxygencloud.odrive.*'
end
