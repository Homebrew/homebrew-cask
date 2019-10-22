cask 'dust3d' do
  version '1.0.0-beta.25'
  sha256 '7c810b3889769b14a34d342a49d4aac67c2dd7b7b7b2d15cedac7b48635ffe26'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
