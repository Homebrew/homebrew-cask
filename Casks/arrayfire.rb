cask 'arrayfire' do
  version '3.6.1'
  sha256 '4afa07262d4c48a682c13901dd09ad2aadfe988212379c2ed78cc9c45049a5d0'

  # arrayfire.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://arrayfire.s3.amazonaws.com/#{version}/ArrayFire-v#{version}_OSX_x86_64.pkg"
  name 'ArrayFire'
  homepage 'https://arrayfire.com/'

  pkg "ArrayFire-v#{version}_OSX_x86_64.pkg"

  uninstall pkgutil: 'com.ArrayFire.ArrayFire.*'
end
