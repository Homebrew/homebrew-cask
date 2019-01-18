cask 'spectral' do
  version '0.0.0.491'
  sha256 'ea5e6702a733e9377b70bb17c7bb75e50ccb09956340da6db7654c7059692030'

  # dl.bintray.com/encombhat was verified as official when first introduced to the cask
  url "https://dl.bintray.com/encombhat/Spectral/spectral-#{version}.dmg"
  name 'Spectral'
  homepage 'https://gitlab.com/b0/spectral'

  app 'spectral.app'
end
