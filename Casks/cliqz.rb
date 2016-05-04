cask 'cliqz' do
  version '1.1.2'
  sha256 '6b8ca8a807abee9dcf0f2cbba8953db22f8739683da4052bdecc00ebf1487b8a'

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
