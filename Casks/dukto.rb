cask 'dukto' do
  version 'R6'
  sha256 '86f06ca92a28b5835cb3eaadfb09897f581a5da3fb8ee8246897b1bf4ee7348a'

  # sourceforge.net/dukto was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dukto/Dukto#{version}-OSX.dmg"
  appcast 'https://sourceforge.net/projects/dukto/rss',
          checkpoint: '49bd22f7cca66665784b455169e086660d3fb3ff55471c62fbd7162ee37a3550'
  name 'Dukto'
  homepage 'http://www.msec.it/dukto/'

  app 'Dukto.app'
end
