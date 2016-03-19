cask 'copay' do
  version '1.9.4'
  sha256 'c55625e36c5c20c6b5d7978df197a8691b9d43790530f62a157c34c1090dcf82'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'e90d26d6e83ea860901ccf76a0e676dda85fbc213db8923c3fd559fcbef9b7a7'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss

  app 'Copay.app'
end
