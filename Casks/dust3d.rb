cask 'dust3d' do
  version '1.0.0-beta.15'
  sha256 'e52f648747a83abec242a43f97dfb5266cd9a976de3a99060e7a9015b0f98cea'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
