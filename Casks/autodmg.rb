cask :v1 => 'autodmg' do
  version '1.5.3'
  sha256 '3d38efa6b76c2efc8d318a1f3db09f872fee964fc68694406dbd7a095ed4a9d2'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
