cask 'etcher' do
  version '1.0.0-beta.14'
  sha256 '2d28c18b4df262d251f217447a726841397039153d22a3801b74d871d10a6693'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'https://www.etcher.io/'
  license :apache

  app 'Etcher.app'
end
