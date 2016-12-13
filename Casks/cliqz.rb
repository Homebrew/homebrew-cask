cask 'cliqz' do
  version '1.9.0'
  sha256 '86130280d3a45a8280a5e602bcdc9b0642f6fbaee7ef17efce56d00987545040'

  url 'https://cdn.cliqz.com/browser-f/download/web0001/CLIQZ.de.mac.dmg'
  name 'CLIQZ'
  homepage 'https://cliqz.com/'

  app 'CLIQZ.app'

  zap delete: [
                '~/Library/Application Support/CLIQZ',
                '~/Library/Caches/CLIQZ',
              ]
end
