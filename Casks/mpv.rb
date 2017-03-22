cask 'mpv' do
  version '0.24.0'
  sha256 '9c5f6a698f916ac8c11dbe38a1a753d3e6036a13e57773763cb27e41b3733b99'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/',
          checkpoint: 'f0e027fd80e722e44fdc28ac34c69b4662544b45d997afb77ffd69c20d95ad39'
  name 'mpv'
  homepage 'https://mpv.io/'

  app 'mpv.app'
end
