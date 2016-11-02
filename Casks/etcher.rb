cask 'etcher' do
  version '1.0.0-beta.16'
  sha256 '4c6e3ec337e871acbd7913d345e169aabff6b2865fa4cd386e66a0d4e38f060a'

  # resin-production-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://resin-production-downloads.s3.amazonaws.com/etcher/#{version}/Etcher-#{version}-darwin-x64.dmg"
  name 'Etcher'
  homepage 'https://www.etcher.io/'

  app 'Etcher.app'
end
