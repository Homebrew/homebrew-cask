cask 'dust3d' do
  version '1.0.0-beta.24'
  sha256 '7d56d34edb3d02af05805317ac4285849d30adc8959a420aa5c88ffe73b22725'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
