cask 'etcher' do
  version '1.0.0-beta.12'
  sha256 '929d1ab9bfe7d301e03d0ee6933805f1366e6008f31b06ed1f3e95fb1c146a17'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'https://www.etcher.io/'
  license :apache

  app 'etcher.app'
end
