cask 'cliqz' do
  version '1.5.0'
  sha256 'a529c772dfe471b2ecd2c69fcd7aeff8fe95bf47cf2f9b665df5b0fb06df6d9f'

  url 'https://cdn.cliqz.com/browser-f/download/web0001/CLIQZ.de.mac.dmg'
  name 'CLIQZ'
  homepage 'https://cliqz.com'
  license :oss

  app 'CLIQZ.app'

  zap delete: [
                '~/Library/Application Support/CLIQZ',
                '~/Library/Caches/CLIQZ',
              ]
end
