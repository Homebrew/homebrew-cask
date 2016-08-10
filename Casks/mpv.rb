cask 'mpv' do
  version '0.18.1'
  sha256 'c7ca06c7c6d72cf639811664918e37c65b2e4fdf649f6826ab19682be40dc083'

  # laboratory.stolendata.net was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  name 'mpv'
  homepage 'https://mpv.io'
  license :gpl

  app 'mpv.app'
end
