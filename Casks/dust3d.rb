cask 'dust3d' do
  version '1.0.0-beta.19'
  sha256 '33e0fcc4dc4ce6786e4750def044fb13de32e2cc9b8daa3f080b85eab78ef42c'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
