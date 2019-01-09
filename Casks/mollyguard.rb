cask 'mollyguard' do
  version '1.0.0'
  sha256 '1db2745811987d4dbb94aa586b91199eff3b5d715b684ab93c789231c0ca4f13'

  # dl.dropboxusercontent.com/s/e2l2dk2qz1u93cb was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/e2l2dk2qz1u93cb/MollyGuard.dmg'
  appcast 'https://dl.dropboxusercontent.com/s/sno9l4q8ncogz27/MGUpdate.xml'
  name 'MollyGuard'
  homepage 'http://mollyguard.infinitemonkeytheory.com/'

  app 'MollyGuard.app'
end
