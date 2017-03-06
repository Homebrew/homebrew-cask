cask 'bitmessage' do
  version '0.6.2'
  sha256 '79c02e7d42e0b313baacaee31a4d6df2650f83726fe759705cd88d1038256dcb'

  # github.com/Bitmessage/PyBitmessage was verified as official when first introduced to the cask
  url "https://github.com/Bitmessage/PyBitmessage/releases/download/v#{version}/bitmessage-v#{version}.dmg"
  appcast 'https://github.com/Bitmessage/PyBitmessage/releases.atom',
          checkpoint: 'b27234668b54eae0824731a8326cae2aea1de0bf74b3b1d4251d5c4a5062a928'
  name 'Bitmessage'
  homepage 'https://bitmessage.org/'

  app 'Bitmessage.app'
end
