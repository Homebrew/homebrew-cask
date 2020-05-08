cask 'autopkgr' do
  version '1.5.3'
  sha256 'd861c20487d297f6078626cc1e7968801582bd00f8bd089fd8ce97e86c0d46cc'

  # github.com/lindegroup/autopkgr/ was verified as official when first introduced to the cask
  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg"
  appcast 'https://github.com/lindegroup/autopkgr/releases.atom'
  name 'AutoPkgr'
  homepage 'https://www.lindegroup.com/autopkgr'

  app 'AutoPkgr.app'
end
