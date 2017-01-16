cask 'etcher' do
  version '1.0.0-beta.17'
  sha256 '648ef2babbbaea6abdf7a680a76afe3f03dbc11780164e890d377c67aec124dc'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: 'd95cb8bd3494d8c9707618e1f111506f6f281ae6d5fe50694bac02e654f164da'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'
end
