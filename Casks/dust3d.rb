cask 'dust3d' do
  version '1.0.0-beta.28'
  sha256 'ab61f3476231e8e0ab99c344fab759beba36ae2638a45850f1f67472f5af395b'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
