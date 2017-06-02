cask 'dukto' do
  version 'R6'
  sha256 '86f06ca92a28b5835cb3eaadfb09897f581a5da3fb8ee8246897b1bf4ee7348a'

  # sourceforge.net/dukto was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dukto/Dukto#{version}-OSX.dmg"
  appcast 'https://sourceforge.net/projects/dukto/rss',
          checkpoint: '7f985cf2586168ce483c2f3cb55bd0cf442519a39147d70550fc70069c9d9f5e'
  name 'Dukto'
  homepage 'http://www.msec.it/blog/?page_id=11'

  app 'Dukto.app'
end
