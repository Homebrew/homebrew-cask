cask 'cliqz' do
  version :latest
  sha256 :no_check

  language 'de' do
    'de'
  end

  language 'en', default: true do
    'en-US'
  end

  url "https://cdn.cliqz.com/browser-f/download/web0001/CLIQZ.#{language}.mac.dmg"
  name 'CLIQZ'
  homepage 'https://cliqz.com/'

  app 'CLIQZ.app'

  zap delete: [
                '~/Library/Application Support/CLIQZ',
                '~/Library/Caches/CLIQZ',
              ]
end
