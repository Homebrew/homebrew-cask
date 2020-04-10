cask 'dust3d' do
  version '1.0.0-rc.5'
  sha256 'ece43219f8a1dba79261c71a3b0ec24b2e59e03de3cb52a19f59a88758638adc'

  # github.com/huxingyi/dust3d was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast 'https://github.com/huxingyi/dust3d/releases.atom'
  name 'Dust3D'
  homepage 'https://dust3d.org/'

  app "dust3d-#{version}.app"
end
