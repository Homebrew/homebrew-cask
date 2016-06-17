cask 'etcher' do
  version '1.0.0-beta.8'
  sha256 'fa8489ad9d51de8884b862afed054b3d8597a2aa7c21e7cc5e28894868fb2466'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'http://www.etcher.io/'
  license :apache

  app 'etcher.app'
end
