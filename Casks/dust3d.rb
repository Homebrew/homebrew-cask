cask 'dust3d' do
  version '1.0.0-rc.1'
  sha256 'bb3e5d10288e3a9419051f761c3c0b4776550cbd3e3d354f0aad38abc88e5e38'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
