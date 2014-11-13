cask :v1 => 'openemu' do
  version '1.0.4'
  sha256 'c9c3abc2acea4ed4c1e2b62fd6868feae1719251428a79803d9aa8a0de4474ef'

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://raw.github.com/OpenEmu/OpenEmu-Update/master/appcast.xml',
          :sha256 => '0bc7baf23728b6c53a7d3c502fff9ccb0df150446a1164dc9e8ebcefc1c5a619'
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'
end
