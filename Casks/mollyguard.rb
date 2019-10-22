cask 'mollyguard' do
  version '1.0.3,188'
  sha256 '0e9cd6ba7c94d6a36b03293fe9dda3e94bf9e88b1750f253a67bbd3e469d1ed7'

  # dl.dropboxusercontent.com/s/j9kx9ufk74wtpm9 was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/j9kx9ufk74wtpm9/MollyGuard.zip?dl=1'
  appcast 'https://dl.dropboxusercontent.com/s/sno9l4q8ncogz27/MGUpdate.xml'
  name 'MollyGuard'
  homepage 'http://mollyguard.infinitemonkeytheory.com/'

  app 'MollyGuard.app'
end
