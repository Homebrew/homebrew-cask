cask 'dust3d' do
  version '1.0.0-beta.26'
  sha256 '4dd19a2bc802f2543a41b43c8af406a1090e91b6b831a58ad9369bf3b1f48795'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
