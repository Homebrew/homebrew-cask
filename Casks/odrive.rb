cask :v1 => 'odrive' do
  version '3274'
  sha256 '4c68307c2fb8c03cb018825ad4e96daeba22c33017ee3783d7a6410fb2fb02ab'

  url "http://cdn-mac.odrive.com/odrivesync.#{version}.dmg"
  name 'odrive'
  homepage 'http://www.odrive.com'
  license :gratis

  pkg "odrivesync.#{version}.pkg"

  uninstall :pkgutil => 'com.oxygencloud.odrive*'
end
