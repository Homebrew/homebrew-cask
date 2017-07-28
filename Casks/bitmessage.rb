cask 'bitmessage' do
  version '0.6.2'
  sha256 '79c02e7d42e0b313baacaee31a4d6df2650f83726fe759705cd88d1038256dcb'

  # github.com/Bitmessage/PyBitmessage was verified as official when first introduced to the cask
  url "https://github.com/Bitmessage/PyBitmessage/releases/download/v#{version}/bitmessage-v#{version}.dmg"
  appcast 'https://github.com/Bitmessage/PyBitmessage/releases.atom',
          checkpoint: '2616f7341b2d3f00152e31f56953c8692f6c349ee3591570a70699c83c88722b'
  name 'Bitmessage'
  homepage 'https://bitmessage.org/'

  app 'Bitmessage.app'
end
