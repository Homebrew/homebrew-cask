cask 'etcher' do
  version '1.0.0-beta.18'
  sha256 '3573c73362557296b7dfa19604eeddfeecb4ee2baf4af9b60e46c49a253899e9'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/resin-io/etcher/releases.atom',
          checkpoint: '0de4565cc036df2e3a1cf93eba12b96607a61265a0749fbdde37ef108f2d5418'
  name 'Etcher'
  homepage 'https://etcher.io/'

  app 'Etcher.app'
end
