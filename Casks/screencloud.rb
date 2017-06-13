cask 'screencloud' do
  version '1.3.0'
  sha256 '0f5dce6b79be20f12cd1e14cad91e107898312ea1c2802e6f43627dcbd431c01'

  url "https://screencloud.net/files/mac/ScreenCloud-#{version}.dmg"
  name 'ScreenCloud'
  homepage 'https://screencloud.net/'

  app 'ScreenCloud.app'
end
