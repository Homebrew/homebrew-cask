cask 'autopkgr' do
  version '1.5.1'
  sha256 '11c3ce33822f25053731bb084b6cb0d688461306a43b3782f045bdf5745c0904'

  # github.com/lindegroup/autopkgr was verified as official when first introduced to the cask
  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg"
  appcast 'https://github.com/lindegroup/autopkgr/releases.atom'
  name 'AutoPkgr'
  homepage 'https://www.lindegroup.com/autopkgr'

  app 'AutoPkgr.app'
end
