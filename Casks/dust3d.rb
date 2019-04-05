cask 'dust3d' do
  version '1.0.0-beta.16'
  sha256 '6ad9e135cf9f35fefd2b15ac1b7277f5002a2d6102404be9a81b95906633771b'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
