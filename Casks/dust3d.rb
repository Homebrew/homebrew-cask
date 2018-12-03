cask 'dust3d' do
  version '1.0.0-beta.10'
  sha256 'ff0ebfbe1e22f30e175b3c46fe6eb680c7d31d5867c0207b55898895ac464548'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
