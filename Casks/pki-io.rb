cask 'pki-io' do
  version '0.1.3-release1'
  sha256 '4e9ea634d9038bdb0739eb13c16a324cccc7656d437297d4cb9fcb235610dc34'

  # github.com/pki-io/admin was verified as official when first introduced to the cask
  url "https://github.com/pki-io/admin/releases/download/#{version}/pki.io_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/pki-io/admin/releases.atom',
          checkpoint: '4a9ff1539471616d321f00c3556f7127e3bde30547d26fe73d2f3008ed07808c'
  name 'pki.io'
  homepage 'https://pki.io/'

  binary 'pki.io/bin/pki.io'
end
