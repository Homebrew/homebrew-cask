cask 'etcher' do
  version '1.0.0-beta.15'
  sha256 '085775118bee1f34e99e54493ae923ef69887467eadee7ccf05caebac9ac737f'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'https://www.etcher.io/'

  app 'Etcher.app'
end
