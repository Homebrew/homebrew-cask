cask 'dust3d' do
  version '1.0.0-beta.23'
  sha256 'db43ce3c41f75cf39f1692587bde1d45ea25d9c2849402d0e47407fb6a666e78'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
