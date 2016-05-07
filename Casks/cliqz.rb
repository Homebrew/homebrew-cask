cask 'cliqz' do
  version '1.2.0'
  sha256 'd330a0aa436d782e61009786269048d2eb19ffa1a48f3e0785b7e7ec46efc4fb'

  # repository.cliqz.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://repository.cliqz.com.s3.amazonaws.com/dist/release/#{version}/de/CLIQZ-#{version}.de.mac.dmg"
  name 'CLIQZ'
  homepage 'https://cliqz.com'
  license :oss

  app 'CLIQZ.app'

  zap delete: [
                '~/Library/Application Support/CLIQZ',
                '~/Library/Caches/CLIQZ',
              ]
end
