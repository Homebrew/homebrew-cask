cask 'dust3d' do
  version '1.0.0-beta.29'
  sha256 '14c12c0f2cb5e85781b689a971497d4c352cce45383fdb283acfa4492a3cce56'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
