cask 'etcher' do
  version '1.0.0-beta.19'
  sha256 'c8f01a62c0d5927b85e2f6ad9a69d6c712e857446ecede87d3297041ac66627b'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '814b7e053ba2b60f94d0a5918489ca36b9b215b32c619ffe301ee865c33d139a'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'
end
