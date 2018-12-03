cask 'dust3d' do
  version '1.0.0-beta.10'
  sha256 'd31b8d2253016d4ac848d2f49ac001a1a549adb37cbea7ad41f5b7a6fa906062'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
