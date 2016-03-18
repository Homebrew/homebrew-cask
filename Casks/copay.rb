cask 'copay' do
  version '1.9.4'
  sha256 'c55625e36c5c20c6b5d7978df197a8691b9d43790530f62a157c34c1090dcf82'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay-osx.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
      checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Copay'
  homepage 'https://copay.io'
  license :oss 

  app 'Copay.app'
end
