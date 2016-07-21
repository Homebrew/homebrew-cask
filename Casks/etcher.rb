cask 'etcher' do
  version '1.0.0-beta.11'
  sha256 'a70a986971a00865bb036ba629a46de5e49efee5a2bc8da87412fbdbc01d0e42'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-darwin-x64.dmg"
  name 'Etcher'
  homepage 'http://www.etcher.io/'
  license :apache

  app 'etcher.app'
end
