cask 'autopkgr' do
  version '1.5'
  sha256 '9becfbe4c1c5f5f354433438626a402d807464e8b72fea0701fece9311528a93'

  # github.com/lindegroup/autopkgr was verified as official when first introduced to the cask
  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg"
  appcast 'https://github.com/lindegroup/autopkgr/releases.atom'
  name 'AutoPkgr'
  homepage 'https://www.lindegroup.com/autopkgr'

  app 'AutoPkgr.app'
end
