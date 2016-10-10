cask 'cliqz' do
  version '1.2.1'
  sha256 '387c4ef5b86f1c3605ff7bd54fd210ed23dda13f759a1280212cb2c3c29debf0'

  # repository.cliqz.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://repository.cliqz.com.s3.amazonaws.com/dist/release/#{version}/de/CLIQZ-#{version}.de.mac.dmg"
  name 'CLIQZ'
  homepage 'https://cliqz.com'

  app 'CLIQZ.app'

  zap delete: [
                '~/Library/Application Support/CLIQZ',
                '~/Library/Caches/CLIQZ',
              ]
end
