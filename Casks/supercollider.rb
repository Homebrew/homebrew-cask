cask 'supercollider' do
  version '3.10.1'
  sha256 '366522a2b03712e920797f15c079585379234790f9a07579bf01f225d8efebbb'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
