cask 'dust3d' do
  version '1.0.0-beta.21'
  sha256 'e7b89774cae1ae583fcec108aabca05759878f4d8f1e42751fefed1fbd32cfd7'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
