class Openemu < Cask
  version '1.0.4'
  sha256 'c9c3abc2acea4ed4c1e2b62fd6868feae1719251428a79803d9aa8a0de4474ef'

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}.zip"
  appcast 'https://raw.github.com/OpenEmu/OpenEmu-Update/master/appcast.xml'
  homepage 'http://openemu.org/'
  license :oss

  app 'OpenEmu.app'
end
