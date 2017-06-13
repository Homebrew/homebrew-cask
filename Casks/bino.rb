cask 'bino' do
  version '1.6.5'
  sha256 '9d45fe15e4e475c4e8f889d53dd13f1d0ce9c6d78b6f74d22c5aefbf49d76218'

  # devernay.free.fr/hacks/bino was verified as official when first introduced to the cask
  url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-SnowLeopard-GPL.zip"
  appcast 'http://devernay.free.fr/hacks/bino/',
          checkpoint: '7f37618abb83b7b1c1a5cf954b3396d5cb729bb3184a88505efeff6c47cc6259'
  name 'Bino'
  homepage 'http://bino3d.org/'

  app 'Bino.app'
end
