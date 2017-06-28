cask 'deepstream' do
  version '2.4.0'
  sha256 '3b4a03a560373493859802b0a802331ddc91fe95bd51bdfa26baa882d2967b8e'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/ds-server-artifacts/deepstreamIO/deepstream.io/2.4.0/deepstream.io-mac-2.4.0-5bca621.pkg'
  name 'deepstream.io'
  homepage 'https://deepstreamhub.com/'

  pkg 'deepstream.io-mac-2.4.0-5bca621.pkg'
end
