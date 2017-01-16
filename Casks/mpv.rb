cask 'mpv' do
  version '0.23.0'
  sha256 '9c4f5873fc955920c3d570277a2a74f527a9073c27ee1a5eeb3270a1180961e8'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  name 'mpv'
  homepage 'https://mpv.io'

  app 'mpv.app'
end
