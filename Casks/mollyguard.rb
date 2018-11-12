cask 'mollyguard' do
  version :latest
  sha256 :no_check

  # dl.dropboxusercontent.com/s/e2l2dk2qz1u93cb was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/e2l2dk2qz1u93cb/MollyGuard.dmg'
  appcast 'https://dl.dropboxusercontent.com/s/sno9l4q8ncogz27/MGUpdate.xml'
  name 'MollyGuard'
  homepage 'http://mollyguard.infinitemonkeytheory.com/'

  app 'MollyGuard.app'
end
