cask 'dust3d' do
  version '1.0.0-beta.27'
  sha256 'fb44d8271f911b9f8027450a936cfbe6c4f2c0b4e14a45c45f23d8bb3e91679f'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
