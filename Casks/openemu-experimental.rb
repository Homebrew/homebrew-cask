cask :v1 => 'openemu-experimental' do
  version '1.0.4'
  sha256 '23b99cf31a11f84e1110c6ce9bf503b6b479583e5229987b6c663bacfed73f06'

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast 'https://raw.githubusercontent.com/OpenEmu/OpenEmu-Update/master/appcast-experimental.xml',
          :sha256 => 'd34580c0dbb62c426311027f95b0249b8a981576d3aeda2efb8f87893aef7db9'
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'
end
