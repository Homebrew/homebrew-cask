cask 'etcher' do
  version '1.0.0-beta.2'
  sha256 '558a961efcbf601349dfebea7129cf6cfceec90137c6bb80c4ed7649459c91d2'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'https://etcher.io/'
  license :apache

  app 'etcher.app'
end
