cask 'shimo' do
  version '4.1.5.1_8837'
  sha256 'bd97b294936a84b28daa29df680e0e4e047b19c93f10c69c9d71a295737bf73e'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.shimovpn.com/'

  auto_updates true

  app 'Shimo.app'
end
