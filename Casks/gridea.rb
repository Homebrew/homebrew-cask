cask 'gridea' do
  version '0.9.1'
  sha256 '17c6bcf8010391224ea7e037785d424064f0416185c0a39fca60cd920331ad62'

  # github.com/getgridea/gridea was verified as official when first introduced to the cask
  url "https://github.com/getgridea/gridea/releases/download/v#{version}/Gridea-#{version}.dmg"
  appcast 'https://github.com/getgridea/gridea/releases.atom'
  name 'Gridea'
  homepage 'https://gridea.dev/'

  auto_updates true

  app 'Gridea.app'
end
