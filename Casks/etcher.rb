cask 'etcher' do
  version '1.0.0-beta.13'
  sha256 '0a7b9f7b8b2a21478957e2815f430444285736761652f9b3c7f4fbefea7db356'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'https://www.etcher.io/'
  license :apache

  app 'etcher.app'
end
