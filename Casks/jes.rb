cask 'jes' do
  version '5.02'
  sha256 'e09b3412f2c56bd8dc8fd8c4b3561aeb3f760682deb7b3b6277734c26df8d660'

  url 'https://github.com/gatech-csl/jes/releases/download/5.020/jes-5.020-macosx.zip'
  name 'JES'
  homepage 'https://github.com/gatech-csl/jes'
  license :oss

  app 'JES.app'
end
