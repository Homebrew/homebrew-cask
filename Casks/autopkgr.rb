cask 'autopkgr' do
  version '1.5.2'
  sha256 'db443d0e21d6379a060abb59bced973adbad497a36da1d9e1892bb26ebad0f4e'

  # github.com/lindegroup/autopkgr was verified as official when first introduced to the cask
  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg"
  appcast 'https://github.com/lindegroup/autopkgr/releases.atom'
  name 'AutoPkgr'
  homepage 'https://www.lindegroup.com/autopkgr'

  app 'AutoPkgr.app'
end
