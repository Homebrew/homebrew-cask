cask 'openrefine' do
  version '3.0'
  sha256 '3302658a1e2f42047d24658b35cfa6f759400aacc4e9dec74604685516b514d3'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  appcast 'https://github.com/OpenRefine/OpenRefine/releases.atom'
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
