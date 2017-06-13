cask 'pki-io' do
  version '0.4.2-development'
  sha256 'b37383e97701df3b28b3d83343d7815eb350cddb534887b1072bc1aad45d9080'

  # github.com/pki-io/admin was verified as official when first introduced to the cask
  url "https://github.com/pki-io/admin/releases/download/#{version}/pki.io_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/pki-io/admin/releases.atom',
          checkpoint: '33c4eccd60553f40424f09cd5cda749560273808a4600741cbe3a47e9780b818'
  name 'pki.io'
  homepage 'https://pki.io/'

  binary 'pki.io/bin/pki.io'
end
