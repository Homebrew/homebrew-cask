cask 'dust3d' do
  version '1.0.0-rc.3'
  sha256 '9387bc794e62ee845ba52a166d86373934c29c6dee37b79d697010db8b41c0d5'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
