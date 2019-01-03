cask 'supercollider' do
  version '3.10.0'
  sha256 'ed915a3e387a88f19555de36cd3bd35274db6dfba444f2933dd3b38da74ea930'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
