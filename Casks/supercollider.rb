cask 'supercollider' do
  version '3.10.3'
  sha256 'df6c764579d699d54679dbc1badde405566918dac2d3adecc17326712d2b81f4'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
