cask 'openrefine' do
  version '3.3'
  sha256 'cb91be80c9d864c5c56d9fa544f9c29e732e4bbd2febded8d2248a922501b324'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  appcast 'https://github.com/OpenRefine/OpenRefine/releases.atom'
  name 'OpenRefine'
  homepage 'https://openrefine.org/'

  app 'OpenRefine.app'
end
