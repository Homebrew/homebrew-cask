cask 'cliqz' do
  version '1.0.2'
  sha256 '9369fefb65b36a9ac465b2d0096de61822d40b8168ddfa8a0d6e31652cefe2e6'

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
