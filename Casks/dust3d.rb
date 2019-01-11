cask 'dust3d' do
  version '1.0.0-beta.14'
  sha256 '8aab10d40bfd11e73f28bd2c2868460abde22388478c0314bf6e80031400cce6'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
