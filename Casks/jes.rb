cask 'jes' do
  version '5.020'
  sha256 'e09b3412f2c56bd8dc8fd8c4b3561aeb3f760682deb7b3b6277734c26df8d660'

  url "https://github.com/gatech-csl/jes/releases/download/#{version}/jes-#{version}-macosx.zip"
  appcast 'https://github.com/gatech-csl/jes/releases.atom',
          checkpoint: '740b90e455acdd61965cb2d9db91b50cf2fdae7413e5445da011e028f0be242f'
  name 'JES'
  homepage 'https://github.com/gatech-csl/jes'

  app 'JES.app'
end
